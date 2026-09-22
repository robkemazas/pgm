import 'package:flutter/material.dart';
import 'package:pgm_iphone/app_styles.dart';
import 'package:pgm_iphone/screens/garage_info_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String selectedYear;
  late final List<String> years;

  @override
  void initState() {
    super.initState();
    final currentYear = DateTime.now().year;
    selectedYear = currentYear.toString();
    years = List.generate(5, (i) => (currentYear - 4 + i).toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/garage_workshop.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTopRow(),
                    const SizedBox(height: 24),
                    Image.asset(
                      'assets/images/pgm_logo_clear.png',
                      height: 160,
                    ),
                    const SizedBox(height: 24),
                    _buildButtonRow([
                      PgmButton(label: 'New\nappointment', onPressed: _notImplemented),
                      PgmButton(label: 'Pending\nAppointment', onPressed: _notImplemented),
                    ]),
                    _buildButtonRow([
                      PgmButton(label: 'Service\nrecords', onPressed: _notImplemented),
                      PgmButton(label: 'Purchase\nexpenses', onPressed: _notImplemented),
                    ]),
                    _buildButtonRow([
                      PgmButton(label: 'Expenses\nrecords', onPressed: _notImplemented),
                      PgmButton(label: 'Backup\nrestore', onPressed: _notImplemented),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PgmButton(
          label: 'Garage\ninfo',
          width: 140,
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const GarageInfoScreen()),
          ),
        ),
        const SizedBox(width: 24),
        _buildYearDropdown(),
      ],
    );
  }

  Widget _buildYearDropdown() {
    const yearStyle = TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      shadows: [
        Shadow(
          color: Color(0xFF03A9F4),
          blurRadius: 4,
          offset: Offset(2, 2),
        ),
      ],
    );
    return Container(
      width: 140,
      height: 70,
      decoration: pgmButtonDecoration(),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedYear,
          isExpanded: true,
          icon: const SizedBox.shrink(),
          dropdownColor: Colors.grey[300],
          selectedItemBuilder: (context) => years
              .map((y) => Center(
                    child: Text(
                      y,
                      style: yearStyle,
                    ),
                  ))
              .toList(),
          items: years
              .map((y) => DropdownMenuItem(
                    value: y,
                    child: Text(
                      y,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ))
              .toList(),
          onChanged: (y) => setState(() => selectedYear = y!),
        ),
      ),
    );
  }

  Widget _buildButtonRow(List<Widget> buttons) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buttons[0],
          const SizedBox(width: 12),
          buttons[1],
        ],
      ),
    );
  }

  void _notImplemented() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Not implemented yet')),
    );
  }
}

