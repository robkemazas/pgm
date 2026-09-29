import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pgm_iphone/app_styles.dart';
import 'package:pgm_iphone/database/app_database.dart';

/// Backup / Restore screen ported from the Android Home activity.
///
/// The Android app uses the Storage Access Framework to copy the SQLite
/// database (and Excel folders) into a user-chosen `PGM_backup` folder.
/// Flutter's file_picker does not give persistent URI permissions, so this
/// version keeps the same idea but works with normal filesystem paths:
///   * Backup  – pick a directory and copy the current DB there with a timestamp.
///   * Restore – pick a `.sqlite`/`.db` file and replace the app's DB with it.
class BackupRestoreScreen extends StatefulWidget {
  const BackupRestoreScreen({super.key});

  @override
  State<BackupRestoreScreen> createState() => _BackupRestoreScreenState();
}

class _BackupRestoreScreenState extends State<BackupRestoreScreen> {
  bool _busy = false;

  /// Shows a short message at the bottom of the screen.
  void _show(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  /// BACKUP: ask the user for a directory, then copy the current SQLite DB
  /// into that directory with a timestamped filename.
  Future<void> _backup() async {
    setState(() => _busy = true);
    try {
      final dirPath = await FilePicker.getDirectoryPath();
      if (dirPath == null || dirPath.isEmpty) {
        setState(() => _busy = false);
        return; // User cancelled the picker.
      }

      final dbPath = await AppDatabase.databasePath();
      final source = File(dbPath);
      if (!await source.exists()) {
        _show('No database found to backup');
        setState(() => _busy = false);
        return;
      }

      // Use the same naming pattern the Android app uses for manual backups.
      final safeStamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      final dest = File('$dirPath/pgm_database_$safeStamp.sqlite');
      await source.copy(dest.path);

      _show('Backup saved to ${dest.path}');
    } catch (e) {
      _show('Backup failed: $e');
    } finally {
      setState(() => _busy = false);
    }
  }

  /// RESTORE: ask the user to pick a database file, then copy it over the
  /// app's current DB. The database must be closed first so the file is not
  /// locked by the drift isolate.
  Future<void> _restore() async {
    setState(() => _busy = true);
    try {
      final result = await FilePicker.pickFile(type: FileType.any);
      if (result == null) {
        setState(() => _busy = false);
        return; // User cancelled the picker.
      }

      final pickedPath = result.path;
      if (pickedPath == null || pickedPath.isEmpty) {
        _show('Could not read selected file');
        setState(() => _busy = false);
        return;
      }

      final source = File(pickedPath);
      if (!await source.exists()) {
        _show('Selected file does not exist');
        setState(() => _busy = false);
        return;
      }

      // Close the singleton database connection so the file is no longer open.
      await AppDatabase.closeAndReset();

      final dbPath = await AppDatabase.databasePath();
      final dest = File(dbPath);
      await source.copy(dest.path);

      _show('Database restored. Please restart the app.');
    } catch (e) {
      _show('Restore failed: $e');
    } finally {
      setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Same garage workshop background used by every ported screen.
          Image.asset(
            'assets/images/garage_workshop.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  child: Column(
                    children: [
                      // Back arrow at the top-left, matching other screens.
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset(
                            'assets/images/back.png',
                            width: 70,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Title card styled like an amber Android group box.
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: pgmAmberBoxDecoration(),
                        child: Column(
                          children: [
                            const Text(
                              'BACKUP / RESTORE',
                              style: TextStyle(
                                color: Color(0xFF000099),
                                fontSize: 24,
                                fontFamily: 'CherryCreamSoda',
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Color(0xFF03A9F4),
                                    blurRadius: 3,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            // Android-style metallic buttons for the two actions.
                            PgmButton(
                              label: 'BACKUP',
                              textColor: Colors.green,
                              width: 220,
                              height: 80,
                              onPressed: _busy ? null : _backup,
                            ),
                            const SizedBox(height: 24),
                            PgmButton(
                              label: 'RESTORE',
                              textColor: Colors.red,
                              width: 220,
                              height: 80,
                              onPressed: _busy ? null : _restore,
                            ),
                            if (_busy) ...[
                              const SizedBox(height: 24),
                              const CircularProgressIndicator(),
                            ],
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
