import 'package:flutter/material.dart';
import 'package:drift/drift.dart' as drift;
import 'package:intl/intl.dart';
import 'package:pgm_iphone/app_styles.dart';
import 'package:pgm_iphone/database/app_database.dart';

/// New Appointment screen.
/// Ported from the Android `New_appointment` activity and `layout_new_appointment.xml`.
class NewAppointmentScreen extends StatefulWidget {
  const NewAppointmentScreen({super.key});

  @override
  State<NewAppointmentScreen> createState() => _NewAppointmentScreenState();
}

class _NewAppointmentScreenState extends State<NewAppointmentScreen> {
  // Date / time formatting matches the Android app (dd/MM/yyyy and HH:mm).
  static final _dateFormat = DateFormat('dd/MM/yyyy');
  static final _timeFormat = DateFormat('HH:mm');

  // Vehicle text fields.
  final _regNr = TextEditingController();
  final _engNr = TextEditingController();
  final _odo = TextEditingController();
  final _vin = TextEditingController();
  final _date = TextEditingController();
  final _time = TextEditingController();

  // Customer text fields.
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _address = TextEditingController();
  final _comments = TextEditingController();

  // Spinner selections.
  String? _year;
  String? _make;
  String? _model;
  String? _fuel;
  String? _engCap;
  String? _transmission;
  String? _color;

  // When "N/A" is picked, the spinner is replaced by a typed make/model field.
  bool _makeIsCustom = false;
  bool _modelIsCustom = false;
  final _customMake = TextEditingController();
  final _customModel = TextEditingController();

  // Dropdown contents.
  late final List<String> _years;
  List<String> _makes = [];
  List<String> _models = [];

  // Fixed lists copied from New_appointment.java.
  static const _popularMakes = [
    'Audi', 'BMW', 'Chevrolet', 'Citroën', 'Dacia',
    'Fiat', 'Ford', 'Honda', 'Hyundai', 'Jaguar',
    'Jeep', 'Kia', 'Land Rover', 'Lexus', 'Mazda',
    'Mercedes-Benz', 'Mitsubishi', 'Nissan', 'Opel', 'Peugeot',
    'Porsche', 'Renault', 'Seat', 'Skoda', 'Subaru',
    'Suzuki', 'Tesla', 'Toyota', 'Volkswagen', 'Volvo',
  ];
  static const _fuels = ['GASOLINE', 'PETROL', 'DIESEL', 'HYBRID', 'LPG', 'ELECTRIC', 'OTHER'];
  static const _transmissions = ['MANUAL', 'AUTOMATIC', 'SEMI AUTO', 'OTHER'];
  static const _colors = [
    'WHITE', 'BLACK', 'SILVER', 'GREY', 'BLUE', 'RED', 'GREEN',
    'YELLOW', 'BROWN', 'GOLD', 'ORANGE', 'OTHER',
  ];

  @override
  void initState() {
    super.initState();
    final now = DateTime.now();
    _years = [for (var y = now.year; y >= 1950; y--) '$y'];
    _date.text = _dateFormat.format(now);
    _time.text = _timeFormat.format(now);
    _loadMakes();
  }

  @override
  void dispose() {
    for (final c in [
      _regNr, _engNr, _odo, _vin, _date, _time,
      _name, _phone, _address, _comments, _customMake, _customModel,
    ]) {
      c.dispose();
    }
    super.dispose();
  }

  /// Loads distinct makes from the carMakes table, popular ones first like the
  /// Android screen, then a separator, then the rest. 'N/A' lets the user type.
  Future<void> _loadMakes() async {
    final db = AppDatabase();
    final rows = await (db.selectOnly(db.carMakes, distinct: true)
          ..addColumns([db.carMakes.make]))
        .map((r) => r.read(db.carMakes.make)!)
        .get();
    final makes = <String>[];
    for (final p in _popularMakes) {
      if (rows.contains(p)) makes.add(p);
    }
    makes.add('─────────');
    for (final m in rows) {
      if (!_popularMakes.contains(m)) makes.add(m);
    }
    setState(() => _makes = makes);
  }

  /// Loads models for the chosen make from the carMakes table.
  Future<void> _loadModels(String make) async {
    final db = AppDatabase();
    final rows = await (db.select(db.carMakes)
          ..where((t) => t.make.equals(make)))
        .get();
    setState(() {
      _models = ['N/A', for (final r in rows) r.model];
      _model = null;
      _modelIsCustom = false;
    });
  }

  void _onMakeChanged(String? v) {
    if (v == null || v == '─────────') return;
    setState(() {
      _make = v;
      if (v == 'N/A') {
        // Typed make/model, like replaceSpinn(true) in the Android app.
        _makeIsCustom = true;
        _modelIsCustom = true;
      } else {
        _makeIsCustom = false;
      }
    });
    if (v != 'N/A') _loadModels(v);
  }

  void _onModelChanged(String? v) {
    if (v == null) return;
    setState(() {
      _model = v;
      _modelIsCustom = v == 'N/A';
    });
  }

  /// Clears the whole form, same as clear() in the Android activity.
  void _clear() {
    for (final c in [
      _regNr, _engNr, _odo, _vin, _name, _phone, _address, _comments,
      _customMake, _customModel,
    ]) {
      c.clear();
    }
    final now = DateTime.now();
    _date.text = _dateFormat.format(now);
    _time.text = _timeFormat.format(now);
    setState(() {
      _year = _make = _model = _fuel = _engCap = _transmission = _color = null;
      _makeIsCustom = _modelIsCustom = false;
      _models = [];
    });
  }

  /// Saves the customer row, same fields as saveCustomerToDb in the Java code.
  /// Returns the new custNo, or null when name AND phone are empty.
  Future<int?> _saveCustomer() async {
    if (_name.text.isEmpty && _phone.text.isEmpty) return null;

    final db = AppDatabase();
    final maxExpr = db.customers.custNo.max();
    final row = await (db.selectOnly(db.customers)..addColumns([maxExpr]))
        .getSingle();
    final custNo = (row.read(maxExpr) ?? 0) + 1;

    final makeStr = _makeIsCustom ? _customMake.text : (_make ?? '');
    final modelStr = _modelIsCustom ? _customModel.text : (_model ?? '');

    // Remember new make/model pairs in carMakes like checkModel() does.
    if (_makeIsCustom && makeStr.trim().isNotEmpty) {
      final exists = await (db.select(db.carMakes)
            ..where((t) =>
                t.make.equals(makeStr.trim()) &
                t.model.equals(modelStr.trim())))
          .getSingleOrNull();
      if (exists == null) {
        await db.into(db.carMakes).insert(CarMakesCompanion(
          make: drift.Value(makeStr.trim()),
          model: drift.Value(modelStr.trim()),
        ));
      }
    }

    // Android derives the appointment year from the typed date when possible.
    final appDate = _date.text;
    final appYear =
        appDate.length >= 10 ? appDate.substring(6) : (_year ?? '');

    await db.into(db.customers).insert(CustomersCompanion(
      custNo: drift.Value(custNo),
      name: drift.Value(_name.text),
      phone: drift.Value(_phone.text),
      address: drift.Value(_address.text),
      comments: drift.Value(_comments.text),
      appDate: drift.Value(appDate),
      appTime: drift.Value(_time.text),
      regNr: drift.Value(_regNr.text),
      make: drift.Value(makeStr.trim()),
      model: drift.Value(modelStr.trim()),
      fuel: drift.Value(_fuel ?? ''),
      engCap: drift.Value(_engCap ?? ''),
      transmission: drift.Value(_transmission ?? ''),
      engNr: drift.Value(_engNr.text),
      odometer: drift.Value(_odo.text),
      color: drift.Value(_color ?? ''),
      vin: drift.Value(_vin.text),
      year: drift.Value(_year ?? appYear),
      status: const drift.Value('waiting'),
    ));
    return custNo;
  }

  /// SUBMIT button: validate, save with status 'waiting', then go back.
  Future<void> _submit() async {
    final saved = await _saveCustomer();
    if (!mounted) return;
    if (saved == null) {
      _showNameOrPhoneAlert();
      return;
    }
    Navigator.pop(context);
  }

  /// SERVICE button: save, then open the service sheet (not ported yet).
  Future<void> _service() async {
    final saved = await _saveCustomer();
    if (!mounted) return;
    if (saved == null) {
      _showNameOrPhoneAlert();
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Service screen not implemented yet')),
    );
  }

  /// Same alert as the Android app when name AND phone are empty.
  void _showNameOrPhoneAlert() {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Alert'),
        content: const Text('Name or Phone number please'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Date field tap opens the native date picker, like showDatePickerDialog.
  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(now.year + 5),
    );
    if (picked != null) {
      setState(() => _date.text = _dateFormat.format(picked));
    }
  }

  /// Time field tap opens the native 24h time picker, like showTimePickerDialog.
  Future<void> _pickTime() async {
    final now = TimeOfDay.now();
    final picked = await showTimePicker(
      context: context,
      initialTime: now,
    );
    if (picked != null) {
      final dt = DateTime(2000, 1, 1, picked.hour, picked.minute);
      setState(() => _time.text = _timeFormat.format(dt));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/garage_workshop.png',
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Column(
                    children: [
                      _buildTopBar(),
                      const SizedBox(height: 8),
                      _buildVehicleBox(),
                      _buildPhotoButtons(),
                      const SizedBox(height: 12),
                      _buildCustomerBox(),
                      const SizedBox(height: 16),
                      _buildBottomButtons(),
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

  /// Back button at the top-left, matching the Android exitButton.
  Widget _buildTopBar() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
    );
  }

  /// Blue section titles (VEHICLE / CUSTOMER) with the Android shadow.
  Widget _sectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF3D5AFE),
            fontSize: 24,
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
      ),
    );
  }

  /// Amber box with all vehicle fields (reg nr through date/time).
  Widget _buildVehicleBox() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: pgmAmberBoxDecoration(),
      child: Column(
        children: [
          _sectionTitle('VEHICLE'),
          _row('Reg. Nr :', _field(_regNr, hint: 'Registration Nr')),
          _row('Year :', _dropdown(_years, _year,
              (v) => setState(() => _year = v))),
          _row('Make :', _makeIsCustom
              ? _field(_customMake, hint: 'MAKE', caps: true)
              : _dropdown(['N/A', ..._makes], _make, _onMakeChanged)),
          _row('Model :', _modelIsCustom
              ? _field(_customModel, hint: 'MODEL', caps: true)
              : _dropdown(_models, _model, _onModelChanged)),
          _row('Fuel :', _dropdown(_fuels, _fuel,
              (v) => setState(() => _fuel = v))),
          _row('Engine C.C :', _dropdown(_engCapList(), _engCap,
              (v) => setState(() => _engCap = v))),
          _row('Transmission :', _dropdown(_transmissions, _transmission,
              (v) => setState(() => _transmission = v))),
          _row('Engine Nr. :', _field(_engNr, hint: 'Eng Nr')),
          _row('Odometer :', _field(_odo, hint: 'Odometer',
              type: TextInputType.number)),
          _row('Color :', _dropdown(_colors, _color,
              (v) => setState(() => _color = v))),
          _row('VIN :', _field(_vin, hint: 'VIN', caps: true)),
          _row('Date :', _tapField(_date, _pickDate)),
          _row('Time :', _tapField(_time, _pickTime)),
        ],
      ),
    );
  }

  /// Engine capacity list 0.6..7.5 like the Android engCap spinner.
  List<String> _engCapList() => [
        for (var i = 6; i <= 75; i++)
          (i / 10).toStringAsFixed(1),
      ];

  /// Take a picture / Pictures image buttons (button_3d_* drawables).
  Widget _buildPhotoButtons() {
    Widget img(String asset, VoidCallback onTap) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                child: Image.asset(
                  asset,
                  height: 65,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        );

    return Row(
      children: [
        img(
          'assets/images/take_picture.png',
          () => _notImplemented('Camera'),
        ),
        img(
          'assets/images/pictures.png',
          () => _notImplemented('Pictures'),
        ),
      ],
    );
  }

  /// Amber box with the customer fields.
  Widget _buildCustomerBox() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: pgmAmberBoxDecoration(),
      child: Column(
        children: [
          _sectionTitle('CUSTOMER'),
          _row('Name :', _field(_name, hint: 'Name')),
          _row('Phone Nr.:', _field(_phone,
              hint: 'Phone Number', type: TextInputType.phone)),
          _row('Address :', _field(_address,
              hint: 'Customer Address', height: 70, maxLines: 3)),
          _row('Comments :', _field(_comments,
              hint: 'Comments', height: 128, maxLines: 5)),
        ],
      ),
    );
  }

  /// One label + control row, mirroring the Android TableRow rows.
  Widget _row(String label, Widget control) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            padding: const EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: control,
            ),
          ),
        ],
      ),
    );
  }

  /// Silver translucent edit box used by the vehicle/customer fields.
  Widget _field(
    TextEditingController controller, {
    String? hint,
    double height = 48,
    int maxLines = 1,
    bool caps = false,
    TextInputType? type,
  }) {
    return Container(
      height: height,
      decoration: pgmTextFieldDecoration(),
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        maxLines: maxLines,
        keyboardType: type,
        textCapitalization:
            caps ? TextCapitalization.characters : TextCapitalization.none,
        style: const TextStyle(color: Colors.black, fontSize: 20),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.black54, fontSize: 20),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        ),
      ),
    );
  }

  /// Read-only field that opens a picker on tap (date / time).
  Widget _tapField(TextEditingController controller, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: pgmTextFieldDecoration(),
        alignment: Alignment.center,
        child: Text(
          controller.text,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }

  /// Silver dropdown styled like the Android spinner_background drawable
  /// (grey box, black border, arrow on the right edge).
  Widget _dropdown(
      List<String> items, String? value, ValueChanged<String?> onChanged) {
    return Container(
      height: 48,
      decoration: pgmTextFieldDecoration(),
      padding: const EdgeInsets.only(left: 6),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          isExpanded: true,
          icon: Image.asset(
            'assets/images/ic_arrow_drop_down_black_24dp.png',
            width: 24,
            height: 24,
          ),
          dropdownColor: Colors.white,
          style: const TextStyle(color: Colors.black, fontSize: 20),
          selectedItemBuilder: (context) => items
              .map((i) => Align(
                    alignment: Alignment.center,
                    child: Text(i),
                  ))
              .toList(),
          items: items
              .map((i) => DropdownMenuItem<String>(
                    value: i,
                    enabled: i != '─────────',
                    child: Text(i),
                  ))
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }

  /// CLEAR / SUBMIT / SERVICE row, matching newappointment_buttons.xml.
  Widget _buildBottomButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PgmButton(
          label: 'CLEAR',
          textColor: Colors.red,
          width: 115,
          height: 70,
          onPressed: _clear,
        ),
        PgmButton(
          label: 'SUBMIT',
          textColor: Colors.green,
          width: 115,
          height: 70,
          onPressed: _submit,
        ),
        PgmButton(
          label: 'SERVICE',
          textColor: const Color(0xFF3D5AFE),
          width: 115,
          height: 70,
          onPressed: _service,
        ),
      ],
    );
  }

  void _notImplemented(String what) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$what not implemented yet')),
    );
  }
}
