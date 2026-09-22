import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:drift/drift.dart' as drift;
import 'package:pgm_iphone/database/app_database.dart';

class GarageInfoScreen extends StatefulWidget {
  const GarageInfoScreen({super.key});

  @override
  State<GarageInfoScreen> createState() => _GarageInfoScreenState();
}

class _GarageInfoScreenState extends State<GarageInfoScreen> {
  late final Map<String, TextEditingController> _controllers;
  final _regNo = TextEditingController();
  String _regType = 'vat';

  static const _fieldDefs = [
    _FieldDef('name', 'Name'),
    _FieldDef('address1', 'Address 1'),
    _FieldDef('address2', 'Address 2'),
    _FieldDef('town', 'Town'),
    _FieldDef('city', 'City'),
    _FieldDef('postCode', 'Post code'),
    _FieldDef('phone', 'Phone number'),
    _FieldDef('email', 'Email'),
    _FieldDef('bankName', 'Bank name'),
    _FieldDef('sortCode', 'Sort code'),
    _FieldDef('bic', 'BIC'),
    _FieldDef('iban', 'IBAN'),
    _FieldDef('paypal', 'PayPal'),
    _FieldDef('revolut', 'Revolut'),
    _FieldDef('skrill', 'Skrill'),
  ];

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
      appBar: AppBar(title: const Text('Garage info')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const _LogoPlaceholder(),
                const SizedBox(height: 16),
                ..._fieldDefs.map((f) => _buildField(f)),
                const SizedBox(height: 8),
                _buildTaxVatRow(),
                _buildRegNoField(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _save,
                      child: const Text('Save'),
                    ),
                    ElevatedButton(
                      onPressed: _clear,
                      child: const Text('Clear'),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildField(_FieldDef f) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextField(
        controller: _controllers[f.key],
        decoration: InputDecoration(
          labelText: f.label,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildTaxVatRow() {
    return widgets.RadioGroup<String>(
      groupValue: _regType,
      onChanged: (v) {
        if (v != null) setState(() => _regType = v);
      },
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Radio<String>(value: 'tax'),
              title: const Text('Tax'),
            ),
          ),
          Expanded(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Radio<String>(value: 'vat'),
              title: const Text('VAT'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegNoField() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextField(
        controller: _regNo,
        decoration: InputDecoration(
          labelText: _regType == 'tax' ? 'Tax reg no' : 'VAT reg no',
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}

class _FieldDef {
  final String key;
  final String label;
  const _FieldDef(this.key, this.label);
}

class _LogoPlaceholder extends StatelessWidget {
  const _LogoPlaceholder();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 80,
      child: Center(child: Text('Garage logo — coming soon')),
    );
  }
}
