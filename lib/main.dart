import 'package:flutter/material.dart';
import 'package:pgm_iphone/screens/home_screen.dart';

void main() {
  runApp(const PgmApp());
}

class PgmApp extends StatelessWidget {
  const PgmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PGM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: 'CherryCreamSoda',
      ),
      home: const HomeScreen(),
    );
  }
}
