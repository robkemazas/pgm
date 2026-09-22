import 'package:flutter/material.dart';
import 'package:pgm_iphone/screens/garage_info_screen.dart';

BoxDecoration _metallicDecoration({double radius = 12}) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFB0B0B0),
        Color(0xFFE8E8E8),
        Color(0xFF999999),
        Color(0xFF666666),
      ],
      stops: [0.0, 0.35, 0.65, 1.0],
    ),
    border: Border.all(color: const Color(0xFF444444), width: 2),
    boxShadow: const [
      BoxShadow(color: Colors.black54, blurRadius: 6, offset: Offset(3, 3)),
    ],
  );
}

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
                      _PgmButton(label: 'New\nappointment', onPressed: _notImplemented),
                      _PgmButton(label: 'Pending\nAppointment', onPressed: _notImplemented),
                    ]),
                    _buildButtonRow([
                      _PgmButton(label: 'Service\nrecords', onPressed: _notImplemented),
                      _PgmButton(label: 'Purchase\nexpenses', onPressed: _notImplemented),
                    ]),
                    _buildButtonRow([
                      _PgmButton(label: 'Expenses\nrecords', onPressed: _notImplemented),
                      _PgmButton(label: 'Backup\nrestore', onPressed: _notImplemented),
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
        _PgmButton(
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
    return Container(
      width: 140,
      height: 70,
      decoration: _metallicDecoration(),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedYear,
          isExpanded: true,
          alignment: Alignment.center,
          icon: const SizedBox.shrink(),
          dropdownColor: Colors.grey[300],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(color: Colors.white70, blurRadius: 1)],
          ),
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
        children: buttons,
      ),
    );
  }

  void _notImplemented() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Not implemented yet')),
    );
  }
}

class _PgmButton extends StatelessWidget {
  final String label;
  final double? width;
  final VoidCallback? onPressed;

  const _PgmButton({
    required this.label,
    this.width,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? 150,
        height: 70,
        decoration: _metallicDecoration(),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.white70, blurRadius: 1)],
              height: 1.1,
            ),
          ),
        ),
      ),
    );
  }
}
