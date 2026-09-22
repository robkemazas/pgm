import 'package:flutter/material.dart';
import 'package:pgm_iphone/app_styles.dart';
import 'package:drift/drift.dart' as drift;
import 'package:pgm_iphone/database/app_database.dart';

/// Screen for editing garage / company information.
/// Ported from the Android `Info` activity and `layout_info.xml`.
class GarageInfoScreen extends StatefulWidget {
  const GarageInfoScreen({super.key});

  @override
  State<GarageInfoScreen> createState() => _GarageInfoScreenState();
}

class _GarageInfoScreenState extends State<GarageInfoScreen> {
  // Text controllers for each form field, indexed by database column key.
  late final Map<String, TextEditingController> _controllers;

  // Separate controller for the VAT or TAX registration number.
  final _regNo = TextEditingController();

  // Tracks the selected registration type: 'vat' or 'tax'.
  String _regType = 'vat';

  // Ordered form fields with their database key and Android-style label.
  // Labels include trailing spaces/colons to match the original Android strings.
  static const _fieldDefs = [
    _FieldDef('name', 'Name :'),
    _FieldDef('address1', 'Address 1:'),
    _FieldDef('address2', 'Address 2:'),
    _FieldDef('town', 'Town:'),
    _FieldDef('city', 'City:'),
    _FieldDef('postCode', 'Post code:'),
    _FieldDef('phone', 'Phone Nr.:'),
    _FieldDef('email', 'Email:'),
    _FieldDef('bankName', 'Bank:'),
    _FieldDef('sortCode', 'Sort Code :'),
    _FieldDef('bic', 'BIC :'),
    _FieldDef('iban', 'IBAN :'),
    _FieldDef('paypal', 'Paypal :'),
    _FieldDef('revolut', 'Revolut :'),
    _FieldDef('skrill', 'Skrill :'),
  ];

  // Asset paths for payment-provider icons shown in the payment rows.
  static const _paymentImages = {
    'Paypal :': 'assets/images/paypal.png',
    'Revolut :': 'assets/images/revolut.png',
    'Skrill :': 'assets/images/skrill.png',
  };

  // Shared style for all form labels (left aligned with the Android blue shadow).
  static const _labelStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    shadows: [
      Shadow(
        color: Color(0xFF03A9F4),
        blurRadius: 3,
        offset: Offset(1, 1),
      ),
    ],
  );

  @override
  void initState() {
    super.initState();
    _controllers = {
      for (final f in _fieldDefs) f.key: TextEditingController(),
    };
    _load();
  }

  @override
  void dispose() {
    for (final c in _controllers.values) {
      c.dispose();
    }
    _regNo.dispose();
    super.dispose();
  }

  /// Loads the existing garage info row (id = 1) from Drift.
  Future<void> _load() async {
    final db = AppDatabase();
    final info = await db.select(db.garageInfo).getSingleOrNull();
    if (info == null) return;

    _controllers['name']!.text = info.name;
    _controllers['address1']!.text = info.address1;
    _controllers['address2']!.text = info.address2;
    _controllers['town']!.text = info.town;
    _controllers['city']!.text = info.city;
    _controllers['postCode']!.text = info.postCode;
    _controllers['phone']!.text = info.phone;
    _controllers['email']!.text = info.email;
    _controllers['bankName']!.text = info.bankName;
    _controllers['sortCode']!.text = info.sortCode;
    _controllers['bic']!.text = info.bic;
    _controllers['iban']!.text = info.iban;
    _controllers['paypal']!.text = info.paypal;
    _controllers['revolut']!.text = info.revolut;
    _controllers['skrill']!.text = info.skrill;
    _regNo.text = info.regNo;
    _regType = info.taxVat;
    setState(() {});
  }

  /// Saves or replaces the garage info row (id = 1) in the Drift database.
  Future<void> _save() async {
    final db = AppDatabase();
    final companion = GarageInfoCompanion(
      id: const drift.Value(1),
      name: drift.Value(_controllers['name']!.text),
      address1: drift.Value(_controllers['address1']!.text),
      address2: drift.Value(_controllers['address2']!.text),
      town: drift.Value(_controllers['town']!.text),
      city: drift.Value(_controllers['city']!.text),
      postCode: drift.Value(_controllers['postCode']!.text),
      phone: drift.Value(_controllers['phone']!.text),
      email: drift.Value(_controllers['email']!.text),
      bankName: drift.Value(_controllers['bankName']!.text),
      sortCode: drift.Value(_controllers['sortCode']!.text),
      bic: drift.Value(_controllers['bic']!.text),
      iban: drift.Value(_controllers['iban']!.text),
      paypal: drift.Value(_controllers['paypal']!.text),
      revolut: drift.Value(_controllers['revolut']!.text),
      skrill: drift.Value(_controllers['skrill']!.text),
      regNo: drift.Value(_regNo.text),
      taxVat: drift.Value(_regType),
    );
    await db.into(db.garageInfo).insert(
          companion,
          mode: drift.InsertMode.insertOrReplace,
        );
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Garage info saved')),
      );
    }
  }

  /// Clears every text field and resets the registration type to VAT.
  void _clear() {
    for (final c in _controllers.values) {
      c.clear();
    }
    _regNo.clear();
    setState(() => _regType = 'vat');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Garage/workshop background image used across the app.
          Image.asset(
            'assets/images/garage_workshop.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Column(
                    children: [
                      _buildTopBar(),
                      const SizedBox(height: 12),
                      _buildAmberForm(),
                      const SizedBox(height: 16),
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

  /// Back button placed above the logo, matching the Android vertical order.
  Widget _buildTopBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20, bottom: 30),
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
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Center(
            child: GestureDetector(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Logo picker not implemented yet')),
                );
              },
              child: Image.asset(
                'assets/images/logoover.png',
                width: 260,
                height: 58,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Amber rounded form card with all input sections, separators and buttons.
  Widget _buildAmberForm() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: pgmAmberBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Contact details: Name through Email.
          for (var i = 0; i < 8; i++)
            _buildInfoRow(_fieldDefs[i].label, _controllers[_fieldDefs[i].key]!),
          // VAT / TAX selection placed directly below Email.
          _buildRadioRow('VAT reg. no.:', 'vat'),
          _buildRadioRow('TAX reg. no.:', 'tax'),
          _buildCarbonSeparator(),
          // Bank details.
          for (var i = 8; i < 12; i++)
            _buildInfoRow(_fieldDefs[i].label, _controllers[_fieldDefs[i].key]!),
          _buildCarbonSeparator(),
          // Payment rows with logo-only labels.
          for (var i = 12; i < 15; i++)
            _buildInfoRow(_fieldDefs[i].label, _controllers[_fieldDefs[i].key]!),
          _buildBlueSeparator(),
          _buildBottomButtons(),
        ],
      ),
    );
  }

  /// A single labeled input row. Payment rows show only the provider logo.
  Widget _buildInfoRow(String label, TextEditingController controller) {
    final paymentImage = _paymentImages[label];
    final isPayment = paymentImage != null;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: isPayment
            ? [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Image.asset(
                    paymentImage,
                    width: 120,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: _buildSilverTextField(controller),
                  ),
                ),
              ]
            : [
                Container(
                  width: 130,
                  padding: const EdgeInsets.only(left: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    label,
                    textAlign: TextAlign.left,
                    style: _labelStyle,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: _buildSilverTextField(controller),
                  ),
                ),
              ],
      ),
    );
  }

  /// A translucent silver text field matching the Android edit style.
  Widget _buildSilverTextField(TextEditingController controller) {
    return Container(
      height: 50,
      decoration: pgmTextFieldDecoration(),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.black, fontSize: 17),
        textAlign: TextAlign.start,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        ),
      ),
    );
  }

  /// A VAT/TAX radio row. Shows the registration number field when selected.
  Widget _buildRadioRow(String label, String value) {
    final selected = value == _regType;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              constraints: const BoxConstraints(minWidth: 190),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio<String>(
                    value: value,
                    activeColor: Colors.red,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    label,
                    textAlign: TextAlign.left,
                    style: _labelStyle,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: selected
                  ? _buildSilverTextField(_regNo)
                  : const SizedBox(height: 50),
            ),
          ),
        ],
      ),
    );
  }

  /// Carbon-styled separator used between sections in the Android layout.
  Widget _buildCarbonSeparator() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 20,
        child: Image.asset(
          'assets/images/carbon_button.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  /// Thin blue separator shown before the bottom buttons.
  Widget _buildBlueSeparator() {
    return Container(
      width: double.infinity,
      height: 3,
      margin: const EdgeInsets.symmetric(vertical: 20),
      color: const Color(0x903f51b5),
    );
  }

  /// Bottom CLEAR and SUBMIT buttons styled with the PGM button asset.
  Widget _buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        PgmButton(
          label: 'CLEAR',
          textColor: Colors.red,
          width: 130,
          height: 55,
          onPressed: _clear,
        ),
        PgmButton(
          label: 'SUBMIT',
          width: 130,
          height: 55,
          onPressed: _save,
        ),
      ],
    );
  }
}

/// Simple pair of a Drift table column key and its on-screen label.
class _FieldDef {
  final String key;
  final String label;
  const _FieldDef(this.key, this.label);
}
