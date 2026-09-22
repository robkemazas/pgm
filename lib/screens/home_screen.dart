import 'package:flutter/material.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedYear,
          isExpanded: true,
          dropdownColor: Colors.grey[200],
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          items: years
              .map((y) => DropdownMenuItem(
                    value: y,
                    child: Text(
                      y,
                      textAlign: TextAlign.center,
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
    return SizedBox(
      width: width ?? 150,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[300],
          foregroundColor: Colors.black,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
