// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CustomersTable extends Customers
    with TableInfo<$CustomersTable, Customer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _custNoMeta = const VerificationMeta('custNo');
  @override
  late final GeneratedColumn<int> custNo = GeneratedColumn<int>(
    'cust_no',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _commentsMeta = const VerificationMeta(
    'comments',
  );
  @override
  late final GeneratedColumn<String> comments = GeneratedColumn<String>(
    'comments',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _appDateMeta = const VerificationMeta(
    'appDate',
  );
  @override
  late final GeneratedColumn<String> appDate = GeneratedColumn<String>(
    'app_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _appTimeMeta = const VerificationMeta(
    'appTime',
  );
  @override
  late final GeneratedColumn<String> appTime = GeneratedColumn<String>(
    'app_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regNrMeta = const VerificationMeta('regNr');
  @override
  late final GeneratedColumn<String> regNr = GeneratedColumn<String>(
    'reg_nr',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _makeMeta = const VerificationMeta('make');
  @override
  late final GeneratedColumn<String> make = GeneratedColumn<String>(
    'make',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
    'model',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fuelMeta = const VerificationMeta('fuel');
  @override
  late final GeneratedColumn<String> fuel = GeneratedColumn<String>(
    'fuel',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _engCapMeta = const VerificationMeta('engCap');
  @override
  late final GeneratedColumn<String> engCap = GeneratedColumn<String>(
    'eng_cap',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _transmissionMeta = const VerificationMeta(
    'transmission',
  );
  @override
  late final GeneratedColumn<String> transmission = GeneratedColumn<String>(
    'transmission',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _engNrMeta = const VerificationMeta('engNr');
  @override
  late final GeneratedColumn<String> engNr = GeneratedColumn<String>(
    'eng_nr',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _odometerMeta = const VerificationMeta(
    'odometer',
  );
  @override
  late final GeneratedColumn<String> odometer = GeneratedColumn<String>(
    'odometer',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vinMeta = const VerificationMeta('vin');
  @override
  late final GeneratedColumn<String> vin = GeneratedColumn<String>(
    'vin',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<String> year = GeneratedColumn<String>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    custNo,
    name,
    phone,
    address,
    comments,
    appDate,
    appTime,
    regNr,
    make,
    model,
    fuel,
    engCap,
    transmission,
    engNr,
    odometer,
    color,
    vin,
    year,
    status,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customers';
  @override
  VerificationContext validateIntegrity(
    Insertable<Customer> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cust_no')) {
      context.handle(
        _custNoMeta,
        custNo.isAcceptableOrUnknown(data['cust_no']!, _custNoMeta),
      );
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('comments')) {
      context.handle(
        _commentsMeta,
        comments.isAcceptableOrUnknown(data['comments']!, _commentsMeta),
      );
    } else if (isInserting) {
      context.missing(_commentsMeta);
    }
    if (data.containsKey('app_date')) {
      context.handle(
        _appDateMeta,
        appDate.isAcceptableOrUnknown(data['app_date']!, _appDateMeta),
      );
    } else if (isInserting) {
      context.missing(_appDateMeta);
    }
    if (data.containsKey('app_time')) {
      context.handle(
        _appTimeMeta,
        appTime.isAcceptableOrUnknown(data['app_time']!, _appTimeMeta),
      );
    } else if (isInserting) {
      context.missing(_appTimeMeta);
    }
    if (data.containsKey('reg_nr')) {
      context.handle(
        _regNrMeta,
        regNr.isAcceptableOrUnknown(data['reg_nr']!, _regNrMeta),
      );
    } else if (isInserting) {
      context.missing(_regNrMeta);
    }
    if (data.containsKey('make')) {
      context.handle(
        _makeMeta,
        make.isAcceptableOrUnknown(data['make']!, _makeMeta),
      );
    } else if (isInserting) {
      context.missing(_makeMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
        _modelMeta,
        model.isAcceptableOrUnknown(data['model']!, _modelMeta),
      );
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    if (data.containsKey('fuel')) {
      context.handle(
        _fuelMeta,
        fuel.isAcceptableOrUnknown(data['fuel']!, _fuelMeta),
      );
    } else if (isInserting) {
      context.missing(_fuelMeta);
    }
    if (data.containsKey('eng_cap')) {
      context.handle(
        _engCapMeta,
        engCap.isAcceptableOrUnknown(data['eng_cap']!, _engCapMeta),
      );
    } else if (isInserting) {
      context.missing(_engCapMeta);
    }
    if (data.containsKey('transmission')) {
      context.handle(
        _transmissionMeta,
        transmission.isAcceptableOrUnknown(
          data['transmission']!,
          _transmissionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_transmissionMeta);
    }
    if (data.containsKey('eng_nr')) {
      context.handle(
        _engNrMeta,
        engNr.isAcceptableOrUnknown(data['eng_nr']!, _engNrMeta),
      );
    } else if (isInserting) {
      context.missing(_engNrMeta);
    }
    if (data.containsKey('odometer')) {
      context.handle(
        _odometerMeta,
        odometer.isAcceptableOrUnknown(data['odometer']!, _odometerMeta),
      );
    } else if (isInserting) {
      context.missing(_odometerMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('vin')) {
      context.handle(
        _vinMeta,
        vin.isAcceptableOrUnknown(data['vin']!, _vinMeta),
      );
    } else if (isInserting) {
      context.missing(_vinMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {custNo};
  @override
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Customer(
      custNo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cust_no'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      )!,
      comments: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}comments'],
      )!,
      appDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}app_date'],
      )!,
      appTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}app_time'],
      )!,
      regNr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reg_nr'],
      )!,
      make: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}make'],
      )!,
      model: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}model'],
      )!,
      fuel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}fuel'],
      )!,
      engCap: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}eng_cap'],
      )!,
      transmission: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}transmission'],
      )!,
      engNr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}eng_nr'],
      )!,
      odometer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}odometer'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      )!,
      vin: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vin'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
    );
  }

  @override
  $CustomersTable createAlias(String alias) {
    return $CustomersTable(attachedDatabase, alias);
  }
}

class Customer extends DataClass implements Insertable<Customer> {
  final int custNo;
  final String name;
  final String phone;
  final String address;
  final String comments;
  final String appDate;
  final String appTime;
  final String regNr;
  final String make;
  final String model;
  final String fuel;
  final String engCap;
  final String transmission;
  final String engNr;
  final String odometer;
  final String color;
  final String vin;
  final String year;
  final String status;
  const Customer({
    required this.custNo,
    required this.name,
    required this.phone,
    required this.address,
    required this.comments,
    required this.appDate,
    required this.appTime,
    required this.regNr,
    required this.make,
    required this.model,
    required this.fuel,
    required this.engCap,
    required this.transmission,
    required this.engNr,
    required this.odometer,
    required this.color,
    required this.vin,
    required this.year,
    required this.status,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cust_no'] = Variable<int>(custNo);
    map['name'] = Variable<String>(name);
    map['phone'] = Variable<String>(phone);
    map['address'] = Variable<String>(address);
    map['comments'] = Variable<String>(comments);
    map['app_date'] = Variable<String>(appDate);
    map['app_time'] = Variable<String>(appTime);
    map['reg_nr'] = Variable<String>(regNr);
    map['make'] = Variable<String>(make);
    map['model'] = Variable<String>(model);
    map['fuel'] = Variable<String>(fuel);
    map['eng_cap'] = Variable<String>(engCap);
    map['transmission'] = Variable<String>(transmission);
    map['eng_nr'] = Variable<String>(engNr);
    map['odometer'] = Variable<String>(odometer);
    map['color'] = Variable<String>(color);
    map['vin'] = Variable<String>(vin);
    map['year'] = Variable<String>(year);
    map['status'] = Variable<String>(status);
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      custNo: Value(custNo),
      name: Value(name),
      phone: Value(phone),
      address: Value(address),
      comments: Value(comments),
      appDate: Value(appDate),
      appTime: Value(appTime),
      regNr: Value(regNr),
      make: Value(make),
      model: Value(model),
      fuel: Value(fuel),
      engCap: Value(engCap),
      transmission: Value(transmission),
      engNr: Value(engNr),
      odometer: Value(odometer),
      color: Value(color),
      vin: Value(vin),
      year: Value(year),
      status: Value(status),
    );
  }

  factory Customer.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Customer(
      custNo: serializer.fromJson<int>(json['custNo']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String>(json['phone']),
      address: serializer.fromJson<String>(json['address']),
      comments: serializer.fromJson<String>(json['comments']),
      appDate: serializer.fromJson<String>(json['appDate']),
      appTime: serializer.fromJson<String>(json['appTime']),
      regNr: serializer.fromJson<String>(json['regNr']),
      make: serializer.fromJson<String>(json['make']),
      model: serializer.fromJson<String>(json['model']),
      fuel: serializer.fromJson<String>(json['fuel']),
      engCap: serializer.fromJson<String>(json['engCap']),
      transmission: serializer.fromJson<String>(json['transmission']),
      engNr: serializer.fromJson<String>(json['engNr']),
      odometer: serializer.fromJson<String>(json['odometer']),
      color: serializer.fromJson<String>(json['color']),
      vin: serializer.fromJson<String>(json['vin']),
      year: serializer.fromJson<String>(json['year']),
      status: serializer.fromJson<String>(json['status']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'custNo': serializer.toJson<int>(custNo),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String>(phone),
      'address': serializer.toJson<String>(address),
      'comments': serializer.toJson<String>(comments),
      'appDate': serializer.toJson<String>(appDate),
      'appTime': serializer.toJson<String>(appTime),
      'regNr': serializer.toJson<String>(regNr),
      'make': serializer.toJson<String>(make),
      'model': serializer.toJson<String>(model),
      'fuel': serializer.toJson<String>(fuel),
      'engCap': serializer.toJson<String>(engCap),
      'transmission': serializer.toJson<String>(transmission),
      'engNr': serializer.toJson<String>(engNr),
      'odometer': serializer.toJson<String>(odometer),
      'color': serializer.toJson<String>(color),
      'vin': serializer.toJson<String>(vin),
      'year': serializer.toJson<String>(year),
      'status': serializer.toJson<String>(status),
    };
  }

  Customer copyWith({
    int? custNo,
    String? name,
    String? phone,
    String? address,
    String? comments,
    String? appDate,
    String? appTime,
    String? regNr,
    String? make,
    String? model,
    String? fuel,
    String? engCap,
    String? transmission,
    String? engNr,
    String? odometer,
    String? color,
    String? vin,
    String? year,
    String? status,
  }) => Customer(
    custNo: custNo ?? this.custNo,
    name: name ?? this.name,
    phone: phone ?? this.phone,
    address: address ?? this.address,
    comments: comments ?? this.comments,
    appDate: appDate ?? this.appDate,
    appTime: appTime ?? this.appTime,
    regNr: regNr ?? this.regNr,
    make: make ?? this.make,
    model: model ?? this.model,
    fuel: fuel ?? this.fuel,
    engCap: engCap ?? this.engCap,
    transmission: transmission ?? this.transmission,
    engNr: engNr ?? this.engNr,
    odometer: odometer ?? this.odometer,
    color: color ?? this.color,
    vin: vin ?? this.vin,
    year: year ?? this.year,
    status: status ?? this.status,
  );
  Customer copyWithCompanion(CustomersCompanion data) {
    return Customer(
      custNo: data.custNo.present ? data.custNo.value : this.custNo,
      name: data.name.present ? data.name.value : this.name,
      phone: data.phone.present ? data.phone.value : this.phone,
      address: data.address.present ? data.address.value : this.address,
      comments: data.comments.present ? data.comments.value : this.comments,
      appDate: data.appDate.present ? data.appDate.value : this.appDate,
      appTime: data.appTime.present ? data.appTime.value : this.appTime,
      regNr: data.regNr.present ? data.regNr.value : this.regNr,
      make: data.make.present ? data.make.value : this.make,
      model: data.model.present ? data.model.value : this.model,
      fuel: data.fuel.present ? data.fuel.value : this.fuel,
      engCap: data.engCap.present ? data.engCap.value : this.engCap,
      transmission: data.transmission.present
          ? data.transmission.value
          : this.transmission,
      engNr: data.engNr.present ? data.engNr.value : this.engNr,
      odometer: data.odometer.present ? data.odometer.value : this.odometer,
      color: data.color.present ? data.color.value : this.color,
      vin: data.vin.present ? data.vin.value : this.vin,
      year: data.year.present ? data.year.value : this.year,
      status: data.status.present ? data.status.value : this.status,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('custNo: $custNo, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('comments: $comments, ')
          ..write('appDate: $appDate, ')
          ..write('appTime: $appTime, ')
          ..write('regNr: $regNr, ')
          ..write('make: $make, ')
          ..write('model: $model, ')
          ..write('fuel: $fuel, ')
          ..write('engCap: $engCap, ')
          ..write('transmission: $transmission, ')
          ..write('engNr: $engNr, ')
          ..write('odometer: $odometer, ')
          ..write('color: $color, ')
          ..write('vin: $vin, ')
          ..write('year: $year, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    custNo,
    name,
    phone,
    address,
    comments,
    appDate,
    appTime,
    regNr,
    make,
    model,
    fuel,
    engCap,
    transmission,
    engNr,
    odometer,
    color,
    vin,
    year,
    status,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.custNo == this.custNo &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.comments == this.comments &&
          other.appDate == this.appDate &&
          other.appTime == this.appTime &&
          other.regNr == this.regNr &&
          other.make == this.make &&
          other.model == this.model &&
          other.fuel == this.fuel &&
          other.engCap == this.engCap &&
          other.transmission == this.transmission &&
          other.engNr == this.engNr &&
          other.odometer == this.odometer &&
          other.color == this.color &&
          other.vin == this.vin &&
          other.year == this.year &&
          other.status == this.status);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<int> custNo;
  final Value<String> name;
  final Value<String> phone;
  final Value<String> address;
  final Value<String> comments;
  final Value<String> appDate;
  final Value<String> appTime;
  final Value<String> regNr;
  final Value<String> make;
  final Value<String> model;
  final Value<String> fuel;
  final Value<String> engCap;
  final Value<String> transmission;
  final Value<String> engNr;
  final Value<String> odometer;
  final Value<String> color;
  final Value<String> vin;
  final Value<String> year;
  final Value<String> status;
  const CustomersCompanion({
    this.custNo = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.comments = const Value.absent(),
    this.appDate = const Value.absent(),
    this.appTime = const Value.absent(),
    this.regNr = const Value.absent(),
    this.make = const Value.absent(),
    this.model = const Value.absent(),
    this.fuel = const Value.absent(),
    this.engCap = const Value.absent(),
    this.transmission = const Value.absent(),
    this.engNr = const Value.absent(),
    this.odometer = const Value.absent(),
    this.color = const Value.absent(),
    this.vin = const Value.absent(),
    this.year = const Value.absent(),
    this.status = const Value.absent(),
  });
  CustomersCompanion.insert({
    this.custNo = const Value.absent(),
    required String name,
    required String phone,
    required String address,
    required String comments,
    required String appDate,
    required String appTime,
    required String regNr,
    required String make,
    required String model,
    required String fuel,
    required String engCap,
    required String transmission,
    required String engNr,
    required String odometer,
    required String color,
    required String vin,
    required String year,
    required String status,
  }) : name = Value(name),
       phone = Value(phone),
       address = Value(address),
       comments = Value(comments),
       appDate = Value(appDate),
       appTime = Value(appTime),
       regNr = Value(regNr),
       make = Value(make),
       model = Value(model),
       fuel = Value(fuel),
       engCap = Value(engCap),
       transmission = Value(transmission),
       engNr = Value(engNr),
       odometer = Value(odometer),
       color = Value(color),
       vin = Value(vin),
       year = Value(year),
       status = Value(status);
  static Insertable<Customer> custom({
    Expression<int>? custNo,
    Expression<String>? name,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<String>? comments,
    Expression<String>? appDate,
    Expression<String>? appTime,
    Expression<String>? regNr,
    Expression<String>? make,
    Expression<String>? model,
    Expression<String>? fuel,
    Expression<String>? engCap,
    Expression<String>? transmission,
    Expression<String>? engNr,
    Expression<String>? odometer,
    Expression<String>? color,
    Expression<String>? vin,
    Expression<String>? year,
    Expression<String>? status,
  }) {
    return RawValuesInsertable({
      if (custNo != null) 'cust_no': custNo,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (comments != null) 'comments': comments,
      if (appDate != null) 'app_date': appDate,
      if (appTime != null) 'app_time': appTime,
      if (regNr != null) 'reg_nr': regNr,
      if (make != null) 'make': make,
      if (model != null) 'model': model,
      if (fuel != null) 'fuel': fuel,
      if (engCap != null) 'eng_cap': engCap,
      if (transmission != null) 'transmission': transmission,
      if (engNr != null) 'eng_nr': engNr,
      if (odometer != null) 'odometer': odometer,
      if (color != null) 'color': color,
      if (vin != null) 'vin': vin,
      if (year != null) 'year': year,
      if (status != null) 'status': status,
    });
  }

  CustomersCompanion copyWith({
    Value<int>? custNo,
    Value<String>? name,
    Value<String>? phone,
    Value<String>? address,
    Value<String>? comments,
    Value<String>? appDate,
    Value<String>? appTime,
    Value<String>? regNr,
    Value<String>? make,
    Value<String>? model,
    Value<String>? fuel,
    Value<String>? engCap,
    Value<String>? transmission,
    Value<String>? engNr,
    Value<String>? odometer,
    Value<String>? color,
    Value<String>? vin,
    Value<String>? year,
    Value<String>? status,
  }) {
    return CustomersCompanion(
      custNo: custNo ?? this.custNo,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      comments: comments ?? this.comments,
      appDate: appDate ?? this.appDate,
      appTime: appTime ?? this.appTime,
      regNr: regNr ?? this.regNr,
      make: make ?? this.make,
      model: model ?? this.model,
      fuel: fuel ?? this.fuel,
      engCap: engCap ?? this.engCap,
      transmission: transmission ?? this.transmission,
      engNr: engNr ?? this.engNr,
      odometer: odometer ?? this.odometer,
      color: color ?? this.color,
      vin: vin ?? this.vin,
      year: year ?? this.year,
      status: status ?? this.status,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (custNo.present) {
      map['cust_no'] = Variable<int>(custNo.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (comments.present) {
      map['comments'] = Variable<String>(comments.value);
    }
    if (appDate.present) {
      map['app_date'] = Variable<String>(appDate.value);
    }
    if (appTime.present) {
      map['app_time'] = Variable<String>(appTime.value);
    }
    if (regNr.present) {
      map['reg_nr'] = Variable<String>(regNr.value);
    }
    if (make.present) {
      map['make'] = Variable<String>(make.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (fuel.present) {
      map['fuel'] = Variable<String>(fuel.value);
    }
    if (engCap.present) {
      map['eng_cap'] = Variable<String>(engCap.value);
    }
    if (transmission.present) {
      map['transmission'] = Variable<String>(transmission.value);
    }
    if (engNr.present) {
      map['eng_nr'] = Variable<String>(engNr.value);
    }
    if (odometer.present) {
      map['odometer'] = Variable<String>(odometer.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (vin.present) {
      map['vin'] = Variable<String>(vin.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('custNo: $custNo, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('comments: $comments, ')
          ..write('appDate: $appDate, ')
          ..write('appTime: $appTime, ')
          ..write('regNr: $regNr, ')
          ..write('make: $make, ')
          ..write('model: $model, ')
          ..write('fuel: $fuel, ')
          ..write('engCap: $engCap, ')
          ..write('transmission: $transmission, ')
          ..write('engNr: $engNr, ')
          ..write('odometer: $odometer, ')
          ..write('color: $color, ')
          ..write('vin: $vin, ')
          ..write('year: $year, ')
          ..write('status: $status')
          ..write(')'))
        .toString();
  }
}

class $ServiceRecordsTable extends ServiceRecords
    with TableInfo<$ServiceRecordsTable, ServiceRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ServiceRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _custNoMeta = const VerificationMeta('custNo');
  @override
  late final GeneratedColumn<int> custNo = GeneratedColumn<int>(
    'cust_no',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobDoneDateMeta = const VerificationMeta(
    'jobDoneDate',
  );
  @override
  late final GeneratedColumn<String> jobDoneDate = GeneratedColumn<String>(
    'job_done_date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobDoneTimeMeta = const VerificationMeta(
    'jobDoneTime',
  );
  @override
  late final GeneratedColumn<String> jobDoneTime = GeneratedColumn<String>(
    'job_done_time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partsTotalMeta = const VerificationMeta(
    'partsTotal',
  );
  @override
  late final GeneratedColumn<String> partsTotal = GeneratedColumn<String>(
    'parts_total',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _laborTotalMeta = const VerificationMeta(
    'laborTotal',
  );
  @override
  late final GeneratedColumn<String> laborTotal = GeneratedColumn<String>(
    'labor_total',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partsSubTotalMeta = const VerificationMeta(
    'partsSubTotal',
  );
  @override
  late final GeneratedColumn<String> partsSubTotal = GeneratedColumn<String>(
    'parts_sub_total',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _laborSubTotalMeta = const VerificationMeta(
    'laborSubTotal',
  );
  @override
  late final GeneratedColumn<String> laborSubTotal = GeneratedColumn<String>(
    'labor_sub_total',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _discountMeta = const VerificationMeta(
    'discount',
  );
  @override
  late final GeneratedColumn<String> discount = GeneratedColumn<String>(
    'discount',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _totalValueMeta = const VerificationMeta(
    'totalValue',
  );
  @override
  late final GeneratedColumn<String> totalValue = GeneratedColumn<String>(
    'total_value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidSumMeta = const VerificationMeta(
    'paidSum',
  );
  @override
  late final GeneratedColumn<String> paidSum = GeneratedColumn<String>(
    'paid_sum',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paymentMethodMeta = const VerificationMeta(
    'paymentMethod',
  );
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
    'payment_method',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _partsVatMeta = const VerificationMeta(
    'partsVat',
  );
  @override
  late final GeneratedColumn<String> partsVat = GeneratedColumn<String>(
    'parts_vat',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _laborVatMeta = const VerificationMeta(
    'laborVat',
  );
  @override
  late final GeneratedColumn<String> laborVat = GeneratedColumn<String>(
    'labor_vat',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<String> year = GeneratedColumn<String>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    custNo,
    jobDoneDate,
    jobDoneTime,
    partsTotal,
    laborTotal,
    partsSubTotal,
    laborSubTotal,
    discount,
    totalValue,
    paidSum,
    paymentMethod,
    partsVat,
    laborVat,
    year,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'service_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<ServiceRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cust_no')) {
      context.handle(
        _custNoMeta,
        custNo.isAcceptableOrUnknown(data['cust_no']!, _custNoMeta),
      );
    } else if (isInserting) {
      context.missing(_custNoMeta);
    }
    if (data.containsKey('job_done_date')) {
      context.handle(
        _jobDoneDateMeta,
        jobDoneDate.isAcceptableOrUnknown(
          data['job_done_date']!,
          _jobDoneDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_jobDoneDateMeta);
    }
    if (data.containsKey('job_done_time')) {
      context.handle(
        _jobDoneTimeMeta,
        jobDoneTime.isAcceptableOrUnknown(
          data['job_done_time']!,
          _jobDoneTimeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_jobDoneTimeMeta);
    }
    if (data.containsKey('parts_total')) {
      context.handle(
        _partsTotalMeta,
        partsTotal.isAcceptableOrUnknown(data['parts_total']!, _partsTotalMeta),
      );
    } else if (isInserting) {
      context.missing(_partsTotalMeta);
    }
    if (data.containsKey('labor_total')) {
      context.handle(
        _laborTotalMeta,
        laborTotal.isAcceptableOrUnknown(data['labor_total']!, _laborTotalMeta),
      );
    } else if (isInserting) {
      context.missing(_laborTotalMeta);
    }
    if (data.containsKey('parts_sub_total')) {
      context.handle(
        _partsSubTotalMeta,
        partsSubTotal.isAcceptableOrUnknown(
          data['parts_sub_total']!,
          _partsSubTotalMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_partsSubTotalMeta);
    }
    if (data.containsKey('labor_sub_total')) {
      context.handle(
        _laborSubTotalMeta,
        laborSubTotal.isAcceptableOrUnknown(
          data['labor_sub_total']!,
          _laborSubTotalMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_laborSubTotalMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(
        _discountMeta,
        discount.isAcceptableOrUnknown(data['discount']!, _discountMeta),
      );
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('total_value')) {
      context.handle(
        _totalValueMeta,
        totalValue.isAcceptableOrUnknown(data['total_value']!, _totalValueMeta),
      );
    } else if (isInserting) {
      context.missing(_totalValueMeta);
    }
    if (data.containsKey('paid_sum')) {
      context.handle(
        _paidSumMeta,
        paidSum.isAcceptableOrUnknown(data['paid_sum']!, _paidSumMeta),
      );
    } else if (isInserting) {
      context.missing(_paidSumMeta);
    }
    if (data.containsKey('payment_method')) {
      context.handle(
        _paymentMethodMeta,
        paymentMethod.isAcceptableOrUnknown(
          data['payment_method']!,
          _paymentMethodMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_paymentMethodMeta);
    }
    if (data.containsKey('parts_vat')) {
      context.handle(
        _partsVatMeta,
        partsVat.isAcceptableOrUnknown(data['parts_vat']!, _partsVatMeta),
      );
    } else if (isInserting) {
      context.missing(_partsVatMeta);
    }
    if (data.containsKey('labor_vat')) {
      context.handle(
        _laborVatMeta,
        laborVat.isAcceptableOrUnknown(data['labor_vat']!, _laborVatMeta),
      );
    } else if (isInserting) {
      context.missing(_laborVatMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ServiceRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ServiceRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      custNo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cust_no'],
      )!,
      jobDoneDate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_done_date'],
      )!,
      jobDoneTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_done_time'],
      )!,
      partsTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parts_total'],
      )!,
      laborTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}labor_total'],
      )!,
      partsSubTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parts_sub_total'],
      )!,
      laborSubTotal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}labor_sub_total'],
      )!,
      discount: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}discount'],
      )!,
      totalValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}total_value'],
      )!,
      paidSum: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}paid_sum'],
      )!,
      paymentMethod: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payment_method'],
      )!,
      partsVat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}parts_vat'],
      )!,
      laborVat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}labor_vat'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year'],
      )!,
    );
  }

  @override
  $ServiceRecordsTable createAlias(String alias) {
    return $ServiceRecordsTable(attachedDatabase, alias);
  }
}

class ServiceRecord extends DataClass implements Insertable<ServiceRecord> {
  final int id;
  final int custNo;
  final String jobDoneDate;
  final String jobDoneTime;
  final String partsTotal;
  final String laborTotal;
  final String partsSubTotal;
  final String laborSubTotal;
  final String discount;
  final String totalValue;
  final String paidSum;
  final String paymentMethod;
  final String partsVat;
  final String laborVat;
  final String year;
  const ServiceRecord({
    required this.id,
    required this.custNo,
    required this.jobDoneDate,
    required this.jobDoneTime,
    required this.partsTotal,
    required this.laborTotal,
    required this.partsSubTotal,
    required this.laborSubTotal,
    required this.discount,
    required this.totalValue,
    required this.paidSum,
    required this.paymentMethod,
    required this.partsVat,
    required this.laborVat,
    required this.year,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cust_no'] = Variable<int>(custNo);
    map['job_done_date'] = Variable<String>(jobDoneDate);
    map['job_done_time'] = Variable<String>(jobDoneTime);
    map['parts_total'] = Variable<String>(partsTotal);
    map['labor_total'] = Variable<String>(laborTotal);
    map['parts_sub_total'] = Variable<String>(partsSubTotal);
    map['labor_sub_total'] = Variable<String>(laborSubTotal);
    map['discount'] = Variable<String>(discount);
    map['total_value'] = Variable<String>(totalValue);
    map['paid_sum'] = Variable<String>(paidSum);
    map['payment_method'] = Variable<String>(paymentMethod);
    map['parts_vat'] = Variable<String>(partsVat);
    map['labor_vat'] = Variable<String>(laborVat);
    map['year'] = Variable<String>(year);
    return map;
  }

  ServiceRecordsCompanion toCompanion(bool nullToAbsent) {
    return ServiceRecordsCompanion(
      id: Value(id),
      custNo: Value(custNo),
      jobDoneDate: Value(jobDoneDate),
      jobDoneTime: Value(jobDoneTime),
      partsTotal: Value(partsTotal),
      laborTotal: Value(laborTotal),
      partsSubTotal: Value(partsSubTotal),
      laborSubTotal: Value(laborSubTotal),
      discount: Value(discount),
      totalValue: Value(totalValue),
      paidSum: Value(paidSum),
      paymentMethod: Value(paymentMethod),
      partsVat: Value(partsVat),
      laborVat: Value(laborVat),
      year: Value(year),
    );
  }

  factory ServiceRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ServiceRecord(
      id: serializer.fromJson<int>(json['id']),
      custNo: serializer.fromJson<int>(json['custNo']),
      jobDoneDate: serializer.fromJson<String>(json['jobDoneDate']),
      jobDoneTime: serializer.fromJson<String>(json['jobDoneTime']),
      partsTotal: serializer.fromJson<String>(json['partsTotal']),
      laborTotal: serializer.fromJson<String>(json['laborTotal']),
      partsSubTotal: serializer.fromJson<String>(json['partsSubTotal']),
      laborSubTotal: serializer.fromJson<String>(json['laborSubTotal']),
      discount: serializer.fromJson<String>(json['discount']),
      totalValue: serializer.fromJson<String>(json['totalValue']),
      paidSum: serializer.fromJson<String>(json['paidSum']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      partsVat: serializer.fromJson<String>(json['partsVat']),
      laborVat: serializer.fromJson<String>(json['laborVat']),
      year: serializer.fromJson<String>(json['year']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'custNo': serializer.toJson<int>(custNo),
      'jobDoneDate': serializer.toJson<String>(jobDoneDate),
      'jobDoneTime': serializer.toJson<String>(jobDoneTime),
      'partsTotal': serializer.toJson<String>(partsTotal),
      'laborTotal': serializer.toJson<String>(laborTotal),
      'partsSubTotal': serializer.toJson<String>(partsSubTotal),
      'laborSubTotal': serializer.toJson<String>(laborSubTotal),
      'discount': serializer.toJson<String>(discount),
      'totalValue': serializer.toJson<String>(totalValue),
      'paidSum': serializer.toJson<String>(paidSum),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'partsVat': serializer.toJson<String>(partsVat),
      'laborVat': serializer.toJson<String>(laborVat),
      'year': serializer.toJson<String>(year),
    };
  }

  ServiceRecord copyWith({
    int? id,
    int? custNo,
    String? jobDoneDate,
    String? jobDoneTime,
    String? partsTotal,
    String? laborTotal,
    String? partsSubTotal,
    String? laborSubTotal,
    String? discount,
    String? totalValue,
    String? paidSum,
    String? paymentMethod,
    String? partsVat,
    String? laborVat,
    String? year,
  }) => ServiceRecord(
    id: id ?? this.id,
    custNo: custNo ?? this.custNo,
    jobDoneDate: jobDoneDate ?? this.jobDoneDate,
    jobDoneTime: jobDoneTime ?? this.jobDoneTime,
    partsTotal: partsTotal ?? this.partsTotal,
    laborTotal: laborTotal ?? this.laborTotal,
    partsSubTotal: partsSubTotal ?? this.partsSubTotal,
    laborSubTotal: laborSubTotal ?? this.laborSubTotal,
    discount: discount ?? this.discount,
    totalValue: totalValue ?? this.totalValue,
    paidSum: paidSum ?? this.paidSum,
    paymentMethod: paymentMethod ?? this.paymentMethod,
    partsVat: partsVat ?? this.partsVat,
    laborVat: laborVat ?? this.laborVat,
    year: year ?? this.year,
  );
  ServiceRecord copyWithCompanion(ServiceRecordsCompanion data) {
    return ServiceRecord(
      id: data.id.present ? data.id.value : this.id,
      custNo: data.custNo.present ? data.custNo.value : this.custNo,
      jobDoneDate: data.jobDoneDate.present
          ? data.jobDoneDate.value
          : this.jobDoneDate,
      jobDoneTime: data.jobDoneTime.present
          ? data.jobDoneTime.value
          : this.jobDoneTime,
      partsTotal: data.partsTotal.present
          ? data.partsTotal.value
          : this.partsTotal,
      laborTotal: data.laborTotal.present
          ? data.laborTotal.value
          : this.laborTotal,
      partsSubTotal: data.partsSubTotal.present
          ? data.partsSubTotal.value
          : this.partsSubTotal,
      laborSubTotal: data.laborSubTotal.present
          ? data.laborSubTotal.value
          : this.laborSubTotal,
      discount: data.discount.present ? data.discount.value : this.discount,
      totalValue: data.totalValue.present
          ? data.totalValue.value
          : this.totalValue,
      paidSum: data.paidSum.present ? data.paidSum.value : this.paidSum,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      partsVat: data.partsVat.present ? data.partsVat.value : this.partsVat,
      laborVat: data.laborVat.present ? data.laborVat.value : this.laborVat,
      year: data.year.present ? data.year.value : this.year,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ServiceRecord(')
          ..write('id: $id, ')
          ..write('custNo: $custNo, ')
          ..write('jobDoneDate: $jobDoneDate, ')
          ..write('jobDoneTime: $jobDoneTime, ')
          ..write('partsTotal: $partsTotal, ')
          ..write('laborTotal: $laborTotal, ')
          ..write('partsSubTotal: $partsSubTotal, ')
          ..write('laborSubTotal: $laborSubTotal, ')
          ..write('discount: $discount, ')
          ..write('totalValue: $totalValue, ')
          ..write('paidSum: $paidSum, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('partsVat: $partsVat, ')
          ..write('laborVat: $laborVat, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    custNo,
    jobDoneDate,
    jobDoneTime,
    partsTotal,
    laborTotal,
    partsSubTotal,
    laborSubTotal,
    discount,
    totalValue,
    paidSum,
    paymentMethod,
    partsVat,
    laborVat,
    year,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ServiceRecord &&
          other.id == this.id &&
          other.custNo == this.custNo &&
          other.jobDoneDate == this.jobDoneDate &&
          other.jobDoneTime == this.jobDoneTime &&
          other.partsTotal == this.partsTotal &&
          other.laborTotal == this.laborTotal &&
          other.partsSubTotal == this.partsSubTotal &&
          other.laborSubTotal == this.laborSubTotal &&
          other.discount == this.discount &&
          other.totalValue == this.totalValue &&
          other.paidSum == this.paidSum &&
          other.paymentMethod == this.paymentMethod &&
          other.partsVat == this.partsVat &&
          other.laborVat == this.laborVat &&
          other.year == this.year);
}

class ServiceRecordsCompanion extends UpdateCompanion<ServiceRecord> {
  final Value<int> id;
  final Value<int> custNo;
  final Value<String> jobDoneDate;
  final Value<String> jobDoneTime;
  final Value<String> partsTotal;
  final Value<String> laborTotal;
  final Value<String> partsSubTotal;
  final Value<String> laborSubTotal;
  final Value<String> discount;
  final Value<String> totalValue;
  final Value<String> paidSum;
  final Value<String> paymentMethod;
  final Value<String> partsVat;
  final Value<String> laborVat;
  final Value<String> year;
  const ServiceRecordsCompanion({
    this.id = const Value.absent(),
    this.custNo = const Value.absent(),
    this.jobDoneDate = const Value.absent(),
    this.jobDoneTime = const Value.absent(),
    this.partsTotal = const Value.absent(),
    this.laborTotal = const Value.absent(),
    this.partsSubTotal = const Value.absent(),
    this.laborSubTotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.totalValue = const Value.absent(),
    this.paidSum = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.partsVat = const Value.absent(),
    this.laborVat = const Value.absent(),
    this.year = const Value.absent(),
  });
  ServiceRecordsCompanion.insert({
    this.id = const Value.absent(),
    required int custNo,
    required String jobDoneDate,
    required String jobDoneTime,
    required String partsTotal,
    required String laborTotal,
    required String partsSubTotal,
    required String laborSubTotal,
    required String discount,
    required String totalValue,
    required String paidSum,
    required String paymentMethod,
    required String partsVat,
    required String laborVat,
    required String year,
  }) : custNo = Value(custNo),
       jobDoneDate = Value(jobDoneDate),
       jobDoneTime = Value(jobDoneTime),
       partsTotal = Value(partsTotal),
       laborTotal = Value(laborTotal),
       partsSubTotal = Value(partsSubTotal),
       laborSubTotal = Value(laborSubTotal),
       discount = Value(discount),
       totalValue = Value(totalValue),
       paidSum = Value(paidSum),
       paymentMethod = Value(paymentMethod),
       partsVat = Value(partsVat),
       laborVat = Value(laborVat),
       year = Value(year);
  static Insertable<ServiceRecord> custom({
    Expression<int>? id,
    Expression<int>? custNo,
    Expression<String>? jobDoneDate,
    Expression<String>? jobDoneTime,
    Expression<String>? partsTotal,
    Expression<String>? laborTotal,
    Expression<String>? partsSubTotal,
    Expression<String>? laborSubTotal,
    Expression<String>? discount,
    Expression<String>? totalValue,
    Expression<String>? paidSum,
    Expression<String>? paymentMethod,
    Expression<String>? partsVat,
    Expression<String>? laborVat,
    Expression<String>? year,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (custNo != null) 'cust_no': custNo,
      if (jobDoneDate != null) 'job_done_date': jobDoneDate,
      if (jobDoneTime != null) 'job_done_time': jobDoneTime,
      if (partsTotal != null) 'parts_total': partsTotal,
      if (laborTotal != null) 'labor_total': laborTotal,
      if (partsSubTotal != null) 'parts_sub_total': partsSubTotal,
      if (laborSubTotal != null) 'labor_sub_total': laborSubTotal,
      if (discount != null) 'discount': discount,
      if (totalValue != null) 'total_value': totalValue,
      if (paidSum != null) 'paid_sum': paidSum,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (partsVat != null) 'parts_vat': partsVat,
      if (laborVat != null) 'labor_vat': laborVat,
      if (year != null) 'year': year,
    });
  }

  ServiceRecordsCompanion copyWith({
    Value<int>? id,
    Value<int>? custNo,
    Value<String>? jobDoneDate,
    Value<String>? jobDoneTime,
    Value<String>? partsTotal,
    Value<String>? laborTotal,
    Value<String>? partsSubTotal,
    Value<String>? laborSubTotal,
    Value<String>? discount,
    Value<String>? totalValue,
    Value<String>? paidSum,
    Value<String>? paymentMethod,
    Value<String>? partsVat,
    Value<String>? laborVat,
    Value<String>? year,
  }) {
    return ServiceRecordsCompanion(
      id: id ?? this.id,
      custNo: custNo ?? this.custNo,
      jobDoneDate: jobDoneDate ?? this.jobDoneDate,
      jobDoneTime: jobDoneTime ?? this.jobDoneTime,
      partsTotal: partsTotal ?? this.partsTotal,
      laborTotal: laborTotal ?? this.laborTotal,
      partsSubTotal: partsSubTotal ?? this.partsSubTotal,
      laborSubTotal: laborSubTotal ?? this.laborSubTotal,
      discount: discount ?? this.discount,
      totalValue: totalValue ?? this.totalValue,
      paidSum: paidSum ?? this.paidSum,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      partsVat: partsVat ?? this.partsVat,
      laborVat: laborVat ?? this.laborVat,
      year: year ?? this.year,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (custNo.present) {
      map['cust_no'] = Variable<int>(custNo.value);
    }
    if (jobDoneDate.present) {
      map['job_done_date'] = Variable<String>(jobDoneDate.value);
    }
    if (jobDoneTime.present) {
      map['job_done_time'] = Variable<String>(jobDoneTime.value);
    }
    if (partsTotal.present) {
      map['parts_total'] = Variable<String>(partsTotal.value);
    }
    if (laborTotal.present) {
      map['labor_total'] = Variable<String>(laborTotal.value);
    }
    if (partsSubTotal.present) {
      map['parts_sub_total'] = Variable<String>(partsSubTotal.value);
    }
    if (laborSubTotal.present) {
      map['labor_sub_total'] = Variable<String>(laborSubTotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<String>(discount.value);
    }
    if (totalValue.present) {
      map['total_value'] = Variable<String>(totalValue.value);
    }
    if (paidSum.present) {
      map['paid_sum'] = Variable<String>(paidSum.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (partsVat.present) {
      map['parts_vat'] = Variable<String>(partsVat.value);
    }
    if (laborVat.present) {
      map['labor_vat'] = Variable<String>(laborVat.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ServiceRecordsCompanion(')
          ..write('id: $id, ')
          ..write('custNo: $custNo, ')
          ..write('jobDoneDate: $jobDoneDate, ')
          ..write('jobDoneTime: $jobDoneTime, ')
          ..write('partsTotal: $partsTotal, ')
          ..write('laborTotal: $laborTotal, ')
          ..write('partsSubTotal: $partsSubTotal, ')
          ..write('laborSubTotal: $laborSubTotal, ')
          ..write('discount: $discount, ')
          ..write('totalValue: $totalValue, ')
          ..write('paidSum: $paidSum, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('partsVat: $partsVat, ')
          ..write('laborVat: $laborVat, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }
}

class $PartsTable extends Parts with TableInfo<$PartsTable, Part> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PartsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _custNoMeta = const VerificationMeta('custNo');
  @override
  late final GeneratedColumn<int> custNo = GeneratedColumn<int>(
    'cust_no',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<String> quantity = GeneratedColumn<String>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rateMeta = const VerificationMeta('rate');
  @override
  late final GeneratedColumn<String> rate = GeneratedColumn<String>(
    'rate',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _netMeta = const VerificationMeta('net');
  @override
  late final GeneratedColumn<String> net = GeneratedColumn<String>(
    'net',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vatRateMeta = const VerificationMeta(
    'vatRate',
  );
  @override
  late final GeneratedColumn<String> vatRate = GeneratedColumn<String>(
    'vat_rate',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    custNo,
    description,
    quantity,
    rate,
    net,
    vatRate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'parts';
  @override
  VerificationContext validateIntegrity(
    Insertable<Part> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cust_no')) {
      context.handle(
        _custNoMeta,
        custNo.isAcceptableOrUnknown(data['cust_no']!, _custNoMeta),
      );
    } else if (isInserting) {
      context.missing(_custNoMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('rate')) {
      context.handle(
        _rateMeta,
        rate.isAcceptableOrUnknown(data['rate']!, _rateMeta),
      );
    } else if (isInserting) {
      context.missing(_rateMeta);
    }
    if (data.containsKey('net')) {
      context.handle(
        _netMeta,
        net.isAcceptableOrUnknown(data['net']!, _netMeta),
      );
    } else if (isInserting) {
      context.missing(_netMeta);
    }
    if (data.containsKey('vat_rate')) {
      context.handle(
        _vatRateMeta,
        vatRate.isAcceptableOrUnknown(data['vat_rate']!, _vatRateMeta),
      );
    } else if (isInserting) {
      context.missing(_vatRateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Part map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Part(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      custNo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cust_no'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quantity'],
      )!,
      rate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rate'],
      )!,
      net: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}net'],
      )!,
      vatRate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vat_rate'],
      )!,
    );
  }

  @override
  $PartsTable createAlias(String alias) {
    return $PartsTable(attachedDatabase, alias);
  }
}

class Part extends DataClass implements Insertable<Part> {
  final int id;
  final int custNo;
  final String description;
  final String quantity;
  final String rate;
  final String net;
  final String vatRate;
  const Part({
    required this.id,
    required this.custNo,
    required this.description,
    required this.quantity,
    required this.rate,
    required this.net,
    required this.vatRate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cust_no'] = Variable<int>(custNo);
    map['description'] = Variable<String>(description);
    map['quantity'] = Variable<String>(quantity);
    map['rate'] = Variable<String>(rate);
    map['net'] = Variable<String>(net);
    map['vat_rate'] = Variable<String>(vatRate);
    return map;
  }

  PartsCompanion toCompanion(bool nullToAbsent) {
    return PartsCompanion(
      id: Value(id),
      custNo: Value(custNo),
      description: Value(description),
      quantity: Value(quantity),
      rate: Value(rate),
      net: Value(net),
      vatRate: Value(vatRate),
    );
  }

  factory Part.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Part(
      id: serializer.fromJson<int>(json['id']),
      custNo: serializer.fromJson<int>(json['custNo']),
      description: serializer.fromJson<String>(json['description']),
      quantity: serializer.fromJson<String>(json['quantity']),
      rate: serializer.fromJson<String>(json['rate']),
      net: serializer.fromJson<String>(json['net']),
      vatRate: serializer.fromJson<String>(json['vatRate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'custNo': serializer.toJson<int>(custNo),
      'description': serializer.toJson<String>(description),
      'quantity': serializer.toJson<String>(quantity),
      'rate': serializer.toJson<String>(rate),
      'net': serializer.toJson<String>(net),
      'vatRate': serializer.toJson<String>(vatRate),
    };
  }

  Part copyWith({
    int? id,
    int? custNo,
    String? description,
    String? quantity,
    String? rate,
    String? net,
    String? vatRate,
  }) => Part(
    id: id ?? this.id,
    custNo: custNo ?? this.custNo,
    description: description ?? this.description,
    quantity: quantity ?? this.quantity,
    rate: rate ?? this.rate,
    net: net ?? this.net,
    vatRate: vatRate ?? this.vatRate,
  );
  Part copyWithCompanion(PartsCompanion data) {
    return Part(
      id: data.id.present ? data.id.value : this.id,
      custNo: data.custNo.present ? data.custNo.value : this.custNo,
      description: data.description.present
          ? data.description.value
          : this.description,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      rate: data.rate.present ? data.rate.value : this.rate,
      net: data.net.present ? data.net.value : this.net,
      vatRate: data.vatRate.present ? data.vatRate.value : this.vatRate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Part(')
          ..write('id: $id, ')
          ..write('custNo: $custNo, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('rate: $rate, ')
          ..write('net: $net, ')
          ..write('vatRate: $vatRate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, custNo, description, quantity, rate, net, vatRate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Part &&
          other.id == this.id &&
          other.custNo == this.custNo &&
          other.description == this.description &&
          other.quantity == this.quantity &&
          other.rate == this.rate &&
          other.net == this.net &&
          other.vatRate == this.vatRate);
}

class PartsCompanion extends UpdateCompanion<Part> {
  final Value<int> id;
  final Value<int> custNo;
  final Value<String> description;
  final Value<String> quantity;
  final Value<String> rate;
  final Value<String> net;
  final Value<String> vatRate;
  const PartsCompanion({
    this.id = const Value.absent(),
    this.custNo = const Value.absent(),
    this.description = const Value.absent(),
    this.quantity = const Value.absent(),
    this.rate = const Value.absent(),
    this.net = const Value.absent(),
    this.vatRate = const Value.absent(),
  });
  PartsCompanion.insert({
    this.id = const Value.absent(),
    required int custNo,
    required String description,
    required String quantity,
    required String rate,
    required String net,
    required String vatRate,
  }) : custNo = Value(custNo),
       description = Value(description),
       quantity = Value(quantity),
       rate = Value(rate),
       net = Value(net),
       vatRate = Value(vatRate);
  static Insertable<Part> custom({
    Expression<int>? id,
    Expression<int>? custNo,
    Expression<String>? description,
    Expression<String>? quantity,
    Expression<String>? rate,
    Expression<String>? net,
    Expression<String>? vatRate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (custNo != null) 'cust_no': custNo,
      if (description != null) 'description': description,
      if (quantity != null) 'quantity': quantity,
      if (rate != null) 'rate': rate,
      if (net != null) 'net': net,
      if (vatRate != null) 'vat_rate': vatRate,
    });
  }

  PartsCompanion copyWith({
    Value<int>? id,
    Value<int>? custNo,
    Value<String>? description,
    Value<String>? quantity,
    Value<String>? rate,
    Value<String>? net,
    Value<String>? vatRate,
  }) {
    return PartsCompanion(
      id: id ?? this.id,
      custNo: custNo ?? this.custNo,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      rate: rate ?? this.rate,
      net: net ?? this.net,
      vatRate: vatRate ?? this.vatRate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (custNo.present) {
      map['cust_no'] = Variable<int>(custNo.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<String>(quantity.value);
    }
    if (rate.present) {
      map['rate'] = Variable<String>(rate.value);
    }
    if (net.present) {
      map['net'] = Variable<String>(net.value);
    }
    if (vatRate.present) {
      map['vat_rate'] = Variable<String>(vatRate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PartsCompanion(')
          ..write('id: $id, ')
          ..write('custNo: $custNo, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('rate: $rate, ')
          ..write('net: $net, ')
          ..write('vatRate: $vatRate')
          ..write(')'))
        .toString();
  }
}

class $LaborTable extends Labor with TableInfo<$LaborTable, LaborData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LaborTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _custNoMeta = const VerificationMeta('custNo');
  @override
  late final GeneratedColumn<int> custNo = GeneratedColumn<int>(
    'cust_no',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<String> quantity = GeneratedColumn<String>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rateMeta = const VerificationMeta('rate');
  @override
  late final GeneratedColumn<String> rate = GeneratedColumn<String>(
    'rate',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _netMeta = const VerificationMeta('net');
  @override
  late final GeneratedColumn<String> net = GeneratedColumn<String>(
    'net',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _vatRateMeta = const VerificationMeta(
    'vatRate',
  );
  @override
  late final GeneratedColumn<String> vatRate = GeneratedColumn<String>(
    'vat_rate',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    custNo,
    description,
    quantity,
    rate,
    net,
    vatRate,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'labor';
  @override
  VerificationContext validateIntegrity(
    Insertable<LaborData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('cust_no')) {
      context.handle(
        _custNoMeta,
        custNo.isAcceptableOrUnknown(data['cust_no']!, _custNoMeta),
      );
    } else if (isInserting) {
      context.missing(_custNoMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('rate')) {
      context.handle(
        _rateMeta,
        rate.isAcceptableOrUnknown(data['rate']!, _rateMeta),
      );
    } else if (isInserting) {
      context.missing(_rateMeta);
    }
    if (data.containsKey('net')) {
      context.handle(
        _netMeta,
        net.isAcceptableOrUnknown(data['net']!, _netMeta),
      );
    } else if (isInserting) {
      context.missing(_netMeta);
    }
    if (data.containsKey('vat_rate')) {
      context.handle(
        _vatRateMeta,
        vatRate.isAcceptableOrUnknown(data['vat_rate']!, _vatRateMeta),
      );
    } else if (isInserting) {
      context.missing(_vatRateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LaborData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LaborData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      custNo: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}cust_no'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}quantity'],
      )!,
      rate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rate'],
      )!,
      net: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}net'],
      )!,
      vatRate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}vat_rate'],
      )!,
    );
  }

  @override
  $LaborTable createAlias(String alias) {
    return $LaborTable(attachedDatabase, alias);
  }
}

class LaborData extends DataClass implements Insertable<LaborData> {
  final int id;
  final int custNo;
  final String description;
  final String quantity;
  final String rate;
  final String net;
  final String vatRate;
  const LaborData({
    required this.id,
    required this.custNo,
    required this.description,
    required this.quantity,
    required this.rate,
    required this.net,
    required this.vatRate,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['cust_no'] = Variable<int>(custNo);
    map['description'] = Variable<String>(description);
    map['quantity'] = Variable<String>(quantity);
    map['rate'] = Variable<String>(rate);
    map['net'] = Variable<String>(net);
    map['vat_rate'] = Variable<String>(vatRate);
    return map;
  }

  LaborCompanion toCompanion(bool nullToAbsent) {
    return LaborCompanion(
      id: Value(id),
      custNo: Value(custNo),
      description: Value(description),
      quantity: Value(quantity),
      rate: Value(rate),
      net: Value(net),
      vatRate: Value(vatRate),
    );
  }

  factory LaborData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LaborData(
      id: serializer.fromJson<int>(json['id']),
      custNo: serializer.fromJson<int>(json['custNo']),
      description: serializer.fromJson<String>(json['description']),
      quantity: serializer.fromJson<String>(json['quantity']),
      rate: serializer.fromJson<String>(json['rate']),
      net: serializer.fromJson<String>(json['net']),
      vatRate: serializer.fromJson<String>(json['vatRate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'custNo': serializer.toJson<int>(custNo),
      'description': serializer.toJson<String>(description),
      'quantity': serializer.toJson<String>(quantity),
      'rate': serializer.toJson<String>(rate),
      'net': serializer.toJson<String>(net),
      'vatRate': serializer.toJson<String>(vatRate),
    };
  }

  LaborData copyWith({
    int? id,
    int? custNo,
    String? description,
    String? quantity,
    String? rate,
    String? net,
    String? vatRate,
  }) => LaborData(
    id: id ?? this.id,
    custNo: custNo ?? this.custNo,
    description: description ?? this.description,
    quantity: quantity ?? this.quantity,
    rate: rate ?? this.rate,
    net: net ?? this.net,
    vatRate: vatRate ?? this.vatRate,
  );
  LaborData copyWithCompanion(LaborCompanion data) {
    return LaborData(
      id: data.id.present ? data.id.value : this.id,
      custNo: data.custNo.present ? data.custNo.value : this.custNo,
      description: data.description.present
          ? data.description.value
          : this.description,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      rate: data.rate.present ? data.rate.value : this.rate,
      net: data.net.present ? data.net.value : this.net,
      vatRate: data.vatRate.present ? data.vatRate.value : this.vatRate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LaborData(')
          ..write('id: $id, ')
          ..write('custNo: $custNo, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('rate: $rate, ')
          ..write('net: $net, ')
          ..write('vatRate: $vatRate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, custNo, description, quantity, rate, net, vatRate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LaborData &&
          other.id == this.id &&
          other.custNo == this.custNo &&
          other.description == this.description &&
          other.quantity == this.quantity &&
          other.rate == this.rate &&
          other.net == this.net &&
          other.vatRate == this.vatRate);
}

class LaborCompanion extends UpdateCompanion<LaborData> {
  final Value<int> id;
  final Value<int> custNo;
  final Value<String> description;
  final Value<String> quantity;
  final Value<String> rate;
  final Value<String> net;
  final Value<String> vatRate;
  const LaborCompanion({
    this.id = const Value.absent(),
    this.custNo = const Value.absent(),
    this.description = const Value.absent(),
    this.quantity = const Value.absent(),
    this.rate = const Value.absent(),
    this.net = const Value.absent(),
    this.vatRate = const Value.absent(),
  });
  LaborCompanion.insert({
    this.id = const Value.absent(),
    required int custNo,
    required String description,
    required String quantity,
    required String rate,
    required String net,
    required String vatRate,
  }) : custNo = Value(custNo),
       description = Value(description),
       quantity = Value(quantity),
       rate = Value(rate),
       net = Value(net),
       vatRate = Value(vatRate);
  static Insertable<LaborData> custom({
    Expression<int>? id,
    Expression<int>? custNo,
    Expression<String>? description,
    Expression<String>? quantity,
    Expression<String>? rate,
    Expression<String>? net,
    Expression<String>? vatRate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (custNo != null) 'cust_no': custNo,
      if (description != null) 'description': description,
      if (quantity != null) 'quantity': quantity,
      if (rate != null) 'rate': rate,
      if (net != null) 'net': net,
      if (vatRate != null) 'vat_rate': vatRate,
    });
  }

  LaborCompanion copyWith({
    Value<int>? id,
    Value<int>? custNo,
    Value<String>? description,
    Value<String>? quantity,
    Value<String>? rate,
    Value<String>? net,
    Value<String>? vatRate,
  }) {
    return LaborCompanion(
      id: id ?? this.id,
      custNo: custNo ?? this.custNo,
      description: description ?? this.description,
      quantity: quantity ?? this.quantity,
      rate: rate ?? this.rate,
      net: net ?? this.net,
      vatRate: vatRate ?? this.vatRate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (custNo.present) {
      map['cust_no'] = Variable<int>(custNo.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<String>(quantity.value);
    }
    if (rate.present) {
      map['rate'] = Variable<String>(rate.value);
    }
    if (net.present) {
      map['net'] = Variable<String>(net.value);
    }
    if (vatRate.present) {
      map['vat_rate'] = Variable<String>(vatRate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LaborCompanion(')
          ..write('id: $id, ')
          ..write('custNo: $custNo, ')
          ..write('description: $description, ')
          ..write('quantity: $quantity, ')
          ..write('rate: $rate, ')
          ..write('net: $net, ')
          ..write('vatRate: $vatRate')
          ..write(')'))
        .toString();
  }
}

class $GarageInfoTable extends GarageInfo
    with TableInfo<$GarageInfoTable, GarageInfoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GarageInfoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _address1Meta = const VerificationMeta(
    'address1',
  );
  @override
  late final GeneratedColumn<String> address1 = GeneratedColumn<String>(
    'address1',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _address2Meta = const VerificationMeta(
    'address2',
  );
  @override
  late final GeneratedColumn<String> address2 = GeneratedColumn<String>(
    'address2',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _townMeta = const VerificationMeta('town');
  @override
  late final GeneratedColumn<String> town = GeneratedColumn<String>(
    'town',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
    'city',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _postCodeMeta = const VerificationMeta(
    'postCode',
  );
  @override
  late final GeneratedColumn<String> postCode = GeneratedColumn<String>(
    'post_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regNoMeta = const VerificationMeta('regNo');
  @override
  late final GeneratedColumn<String> regNo = GeneratedColumn<String>(
    'reg_no',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _taxVatMeta = const VerificationMeta('taxVat');
  @override
  late final GeneratedColumn<String> taxVat = GeneratedColumn<String>(
    'tax_vat',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bankNameMeta = const VerificationMeta(
    'bankName',
  );
  @override
  late final GeneratedColumn<String> bankName = GeneratedColumn<String>(
    'bank_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortCodeMeta = const VerificationMeta(
    'sortCode',
  );
  @override
  late final GeneratedColumn<String> sortCode = GeneratedColumn<String>(
    'sort_code',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bicMeta = const VerificationMeta('bic');
  @override
  late final GeneratedColumn<String> bic = GeneratedColumn<String>(
    'bic',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ibanMeta = const VerificationMeta('iban');
  @override
  late final GeneratedColumn<String> iban = GeneratedColumn<String>(
    'iban',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paypalMeta = const VerificationMeta('paypal');
  @override
  late final GeneratedColumn<String> paypal = GeneratedColumn<String>(
    'paypal',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _revolutMeta = const VerificationMeta(
    'revolut',
  );
  @override
  late final GeneratedColumn<String> revolut = GeneratedColumn<String>(
    'revolut',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _skrillMeta = const VerificationMeta('skrill');
  @override
  late final GeneratedColumn<String> skrill = GeneratedColumn<String>(
    'skrill',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    address1,
    address2,
    town,
    city,
    postCode,
    phone,
    regNo,
    taxVat,
    email,
    bankName,
    sortCode,
    bic,
    iban,
    paypal,
    revolut,
    skrill,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'garage_info';
  @override
  VerificationContext validateIntegrity(
    Insertable<GarageInfoData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address1')) {
      context.handle(
        _address1Meta,
        address1.isAcceptableOrUnknown(data['address1']!, _address1Meta),
      );
    } else if (isInserting) {
      context.missing(_address1Meta);
    }
    if (data.containsKey('address2')) {
      context.handle(
        _address2Meta,
        address2.isAcceptableOrUnknown(data['address2']!, _address2Meta),
      );
    } else if (isInserting) {
      context.missing(_address2Meta);
    }
    if (data.containsKey('town')) {
      context.handle(
        _townMeta,
        town.isAcceptableOrUnknown(data['town']!, _townMeta),
      );
    } else if (isInserting) {
      context.missing(_townMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
        _cityMeta,
        city.isAcceptableOrUnknown(data['city']!, _cityMeta),
      );
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('post_code')) {
      context.handle(
        _postCodeMeta,
        postCode.isAcceptableOrUnknown(data['post_code']!, _postCodeMeta),
      );
    } else if (isInserting) {
      context.missing(_postCodeMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('reg_no')) {
      context.handle(
        _regNoMeta,
        regNo.isAcceptableOrUnknown(data['reg_no']!, _regNoMeta),
      );
    } else if (isInserting) {
      context.missing(_regNoMeta);
    }
    if (data.containsKey('tax_vat')) {
      context.handle(
        _taxVatMeta,
        taxVat.isAcceptableOrUnknown(data['tax_vat']!, _taxVatMeta),
      );
    } else if (isInserting) {
      context.missing(_taxVatMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('bank_name')) {
      context.handle(
        _bankNameMeta,
        bankName.isAcceptableOrUnknown(data['bank_name']!, _bankNameMeta),
      );
    } else if (isInserting) {
      context.missing(_bankNameMeta);
    }
    if (data.containsKey('sort_code')) {
      context.handle(
        _sortCodeMeta,
        sortCode.isAcceptableOrUnknown(data['sort_code']!, _sortCodeMeta),
      );
    } else if (isInserting) {
      context.missing(_sortCodeMeta);
    }
    if (data.containsKey('bic')) {
      context.handle(
        _bicMeta,
        bic.isAcceptableOrUnknown(data['bic']!, _bicMeta),
      );
    } else if (isInserting) {
      context.missing(_bicMeta);
    }
    if (data.containsKey('iban')) {
      context.handle(
        _ibanMeta,
        iban.isAcceptableOrUnknown(data['iban']!, _ibanMeta),
      );
    } else if (isInserting) {
      context.missing(_ibanMeta);
    }
    if (data.containsKey('paypal')) {
      context.handle(
        _paypalMeta,
        paypal.isAcceptableOrUnknown(data['paypal']!, _paypalMeta),
      );
    } else if (isInserting) {
      context.missing(_paypalMeta);
    }
    if (data.containsKey('revolut')) {
      context.handle(
        _revolutMeta,
        revolut.isAcceptableOrUnknown(data['revolut']!, _revolutMeta),
      );
    } else if (isInserting) {
      context.missing(_revolutMeta);
    }
    if (data.containsKey('skrill')) {
      context.handle(
        _skrillMeta,
        skrill.isAcceptableOrUnknown(data['skrill']!, _skrillMeta),
      );
    } else if (isInserting) {
      context.missing(_skrillMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GarageInfoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GarageInfoData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      address1: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address1'],
      )!,
      address2: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address2'],
      )!,
      town: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}town'],
      )!,
      city: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}city'],
      )!,
      postCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}post_code'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      )!,
      regNo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reg_no'],
      )!,
      taxVat: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tax_vat'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      bankName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bank_name'],
      )!,
      sortCode: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sort_code'],
      )!,
      bic: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bic'],
      )!,
      iban: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}iban'],
      )!,
      paypal: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}paypal'],
      )!,
      revolut: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}revolut'],
      )!,
      skrill: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}skrill'],
      )!,
    );
  }

  @override
  $GarageInfoTable createAlias(String alias) {
    return $GarageInfoTable(attachedDatabase, alias);
  }
}

class GarageInfoData extends DataClass implements Insertable<GarageInfoData> {
  final int id;
  final String name;
  final String address1;
  final String address2;
  final String town;
  final String city;
  final String postCode;
  final String phone;
  final String regNo;
  final String taxVat;
  final String email;
  final String bankName;
  final String sortCode;
  final String bic;
  final String iban;
  final String paypal;
  final String revolut;
  final String skrill;
  const GarageInfoData({
    required this.id,
    required this.name,
    required this.address1,
    required this.address2,
    required this.town,
    required this.city,
    required this.postCode,
    required this.phone,
    required this.regNo,
    required this.taxVat,
    required this.email,
    required this.bankName,
    required this.sortCode,
    required this.bic,
    required this.iban,
    required this.paypal,
    required this.revolut,
    required this.skrill,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['address1'] = Variable<String>(address1);
    map['address2'] = Variable<String>(address2);
    map['town'] = Variable<String>(town);
    map['city'] = Variable<String>(city);
    map['post_code'] = Variable<String>(postCode);
    map['phone'] = Variable<String>(phone);
    map['reg_no'] = Variable<String>(regNo);
    map['tax_vat'] = Variable<String>(taxVat);
    map['email'] = Variable<String>(email);
    map['bank_name'] = Variable<String>(bankName);
    map['sort_code'] = Variable<String>(sortCode);
    map['bic'] = Variable<String>(bic);
    map['iban'] = Variable<String>(iban);
    map['paypal'] = Variable<String>(paypal);
    map['revolut'] = Variable<String>(revolut);
    map['skrill'] = Variable<String>(skrill);
    return map;
  }

  GarageInfoCompanion toCompanion(bool nullToAbsent) {
    return GarageInfoCompanion(
      id: Value(id),
      name: Value(name),
      address1: Value(address1),
      address2: Value(address2),
      town: Value(town),
      city: Value(city),
      postCode: Value(postCode),
      phone: Value(phone),
      regNo: Value(regNo),
      taxVat: Value(taxVat),
      email: Value(email),
      bankName: Value(bankName),
      sortCode: Value(sortCode),
      bic: Value(bic),
      iban: Value(iban),
      paypal: Value(paypal),
      revolut: Value(revolut),
      skrill: Value(skrill),
    );
  }

  factory GarageInfoData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GarageInfoData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      address1: serializer.fromJson<String>(json['address1']),
      address2: serializer.fromJson<String>(json['address2']),
      town: serializer.fromJson<String>(json['town']),
      city: serializer.fromJson<String>(json['city']),
      postCode: serializer.fromJson<String>(json['postCode']),
      phone: serializer.fromJson<String>(json['phone']),
      regNo: serializer.fromJson<String>(json['regNo']),
      taxVat: serializer.fromJson<String>(json['taxVat']),
      email: serializer.fromJson<String>(json['email']),
      bankName: serializer.fromJson<String>(json['bankName']),
      sortCode: serializer.fromJson<String>(json['sortCode']),
      bic: serializer.fromJson<String>(json['bic']),
      iban: serializer.fromJson<String>(json['iban']),
      paypal: serializer.fromJson<String>(json['paypal']),
      revolut: serializer.fromJson<String>(json['revolut']),
      skrill: serializer.fromJson<String>(json['skrill']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'address1': serializer.toJson<String>(address1),
      'address2': serializer.toJson<String>(address2),
      'town': serializer.toJson<String>(town),
      'city': serializer.toJson<String>(city),
      'postCode': serializer.toJson<String>(postCode),
      'phone': serializer.toJson<String>(phone),
      'regNo': serializer.toJson<String>(regNo),
      'taxVat': serializer.toJson<String>(taxVat),
      'email': serializer.toJson<String>(email),
      'bankName': serializer.toJson<String>(bankName),
      'sortCode': serializer.toJson<String>(sortCode),
      'bic': serializer.toJson<String>(bic),
      'iban': serializer.toJson<String>(iban),
      'paypal': serializer.toJson<String>(paypal),
      'revolut': serializer.toJson<String>(revolut),
      'skrill': serializer.toJson<String>(skrill),
    };
  }

  GarageInfoData copyWith({
    int? id,
    String? name,
    String? address1,
    String? address2,
    String? town,
    String? city,
    String? postCode,
    String? phone,
    String? regNo,
    String? taxVat,
    String? email,
    String? bankName,
    String? sortCode,
    String? bic,
    String? iban,
    String? paypal,
    String? revolut,
    String? skrill,
  }) => GarageInfoData(
    id: id ?? this.id,
    name: name ?? this.name,
    address1: address1 ?? this.address1,
    address2: address2 ?? this.address2,
    town: town ?? this.town,
    city: city ?? this.city,
    postCode: postCode ?? this.postCode,
    phone: phone ?? this.phone,
    regNo: regNo ?? this.regNo,
    taxVat: taxVat ?? this.taxVat,
    email: email ?? this.email,
    bankName: bankName ?? this.bankName,
    sortCode: sortCode ?? this.sortCode,
    bic: bic ?? this.bic,
    iban: iban ?? this.iban,
    paypal: paypal ?? this.paypal,
    revolut: revolut ?? this.revolut,
    skrill: skrill ?? this.skrill,
  );
  GarageInfoData copyWithCompanion(GarageInfoCompanion data) {
    return GarageInfoData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      address1: data.address1.present ? data.address1.value : this.address1,
      address2: data.address2.present ? data.address2.value : this.address2,
      town: data.town.present ? data.town.value : this.town,
      city: data.city.present ? data.city.value : this.city,
      postCode: data.postCode.present ? data.postCode.value : this.postCode,
      phone: data.phone.present ? data.phone.value : this.phone,
      regNo: data.regNo.present ? data.regNo.value : this.regNo,
      taxVat: data.taxVat.present ? data.taxVat.value : this.taxVat,
      email: data.email.present ? data.email.value : this.email,
      bankName: data.bankName.present ? data.bankName.value : this.bankName,
      sortCode: data.sortCode.present ? data.sortCode.value : this.sortCode,
      bic: data.bic.present ? data.bic.value : this.bic,
      iban: data.iban.present ? data.iban.value : this.iban,
      paypal: data.paypal.present ? data.paypal.value : this.paypal,
      revolut: data.revolut.present ? data.revolut.value : this.revolut,
      skrill: data.skrill.present ? data.skrill.value : this.skrill,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GarageInfoData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('town: $town, ')
          ..write('city: $city, ')
          ..write('postCode: $postCode, ')
          ..write('phone: $phone, ')
          ..write('regNo: $regNo, ')
          ..write('taxVat: $taxVat, ')
          ..write('email: $email, ')
          ..write('bankName: $bankName, ')
          ..write('sortCode: $sortCode, ')
          ..write('bic: $bic, ')
          ..write('iban: $iban, ')
          ..write('paypal: $paypal, ')
          ..write('revolut: $revolut, ')
          ..write('skrill: $skrill')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    address1,
    address2,
    town,
    city,
    postCode,
    phone,
    regNo,
    taxVat,
    email,
    bankName,
    sortCode,
    bic,
    iban,
    paypal,
    revolut,
    skrill,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GarageInfoData &&
          other.id == this.id &&
          other.name == this.name &&
          other.address1 == this.address1 &&
          other.address2 == this.address2 &&
          other.town == this.town &&
          other.city == this.city &&
          other.postCode == this.postCode &&
          other.phone == this.phone &&
          other.regNo == this.regNo &&
          other.taxVat == this.taxVat &&
          other.email == this.email &&
          other.bankName == this.bankName &&
          other.sortCode == this.sortCode &&
          other.bic == this.bic &&
          other.iban == this.iban &&
          other.paypal == this.paypal &&
          other.revolut == this.revolut &&
          other.skrill == this.skrill);
}

class GarageInfoCompanion extends UpdateCompanion<GarageInfoData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> address1;
  final Value<String> address2;
  final Value<String> town;
  final Value<String> city;
  final Value<String> postCode;
  final Value<String> phone;
  final Value<String> regNo;
  final Value<String> taxVat;
  final Value<String> email;
  final Value<String> bankName;
  final Value<String> sortCode;
  final Value<String> bic;
  final Value<String> iban;
  final Value<String> paypal;
  final Value<String> revolut;
  final Value<String> skrill;
  const GarageInfoCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.town = const Value.absent(),
    this.city = const Value.absent(),
    this.postCode = const Value.absent(),
    this.phone = const Value.absent(),
    this.regNo = const Value.absent(),
    this.taxVat = const Value.absent(),
    this.email = const Value.absent(),
    this.bankName = const Value.absent(),
    this.sortCode = const Value.absent(),
    this.bic = const Value.absent(),
    this.iban = const Value.absent(),
    this.paypal = const Value.absent(),
    this.revolut = const Value.absent(),
    this.skrill = const Value.absent(),
  });
  GarageInfoCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String address1,
    required String address2,
    required String town,
    required String city,
    required String postCode,
    required String phone,
    required String regNo,
    required String taxVat,
    required String email,
    required String bankName,
    required String sortCode,
    required String bic,
    required String iban,
    required String paypal,
    required String revolut,
    required String skrill,
  }) : name = Value(name),
       address1 = Value(address1),
       address2 = Value(address2),
       town = Value(town),
       city = Value(city),
       postCode = Value(postCode),
       phone = Value(phone),
       regNo = Value(regNo),
       taxVat = Value(taxVat),
       email = Value(email),
       bankName = Value(bankName),
       sortCode = Value(sortCode),
       bic = Value(bic),
       iban = Value(iban),
       paypal = Value(paypal),
       revolut = Value(revolut),
       skrill = Value(skrill);
  static Insertable<GarageInfoData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? address1,
    Expression<String>? address2,
    Expression<String>? town,
    Expression<String>? city,
    Expression<String>? postCode,
    Expression<String>? phone,
    Expression<String>? regNo,
    Expression<String>? taxVat,
    Expression<String>? email,
    Expression<String>? bankName,
    Expression<String>? sortCode,
    Expression<String>? bic,
    Expression<String>? iban,
    Expression<String>? paypal,
    Expression<String>? revolut,
    Expression<String>? skrill,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (address1 != null) 'address1': address1,
      if (address2 != null) 'address2': address2,
      if (town != null) 'town': town,
      if (city != null) 'city': city,
      if (postCode != null) 'post_code': postCode,
      if (phone != null) 'phone': phone,
      if (regNo != null) 'reg_no': regNo,
      if (taxVat != null) 'tax_vat': taxVat,
      if (email != null) 'email': email,
      if (bankName != null) 'bank_name': bankName,
      if (sortCode != null) 'sort_code': sortCode,
      if (bic != null) 'bic': bic,
      if (iban != null) 'iban': iban,
      if (paypal != null) 'paypal': paypal,
      if (revolut != null) 'revolut': revolut,
      if (skrill != null) 'skrill': skrill,
    });
  }

  GarageInfoCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? address1,
    Value<String>? address2,
    Value<String>? town,
    Value<String>? city,
    Value<String>? postCode,
    Value<String>? phone,
    Value<String>? regNo,
    Value<String>? taxVat,
    Value<String>? email,
    Value<String>? bankName,
    Value<String>? sortCode,
    Value<String>? bic,
    Value<String>? iban,
    Value<String>? paypal,
    Value<String>? revolut,
    Value<String>? skrill,
  }) {
    return GarageInfoCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      town: town ?? this.town,
      city: city ?? this.city,
      postCode: postCode ?? this.postCode,
      phone: phone ?? this.phone,
      regNo: regNo ?? this.regNo,
      taxVat: taxVat ?? this.taxVat,
      email: email ?? this.email,
      bankName: bankName ?? this.bankName,
      sortCode: sortCode ?? this.sortCode,
      bic: bic ?? this.bic,
      iban: iban ?? this.iban,
      paypal: paypal ?? this.paypal,
      revolut: revolut ?? this.revolut,
      skrill: skrill ?? this.skrill,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address1.present) {
      map['address1'] = Variable<String>(address1.value);
    }
    if (address2.present) {
      map['address2'] = Variable<String>(address2.value);
    }
    if (town.present) {
      map['town'] = Variable<String>(town.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (postCode.present) {
      map['post_code'] = Variable<String>(postCode.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (regNo.present) {
      map['reg_no'] = Variable<String>(regNo.value);
    }
    if (taxVat.present) {
      map['tax_vat'] = Variable<String>(taxVat.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (bankName.present) {
      map['bank_name'] = Variable<String>(bankName.value);
    }
    if (sortCode.present) {
      map['sort_code'] = Variable<String>(sortCode.value);
    }
    if (bic.present) {
      map['bic'] = Variable<String>(bic.value);
    }
    if (iban.present) {
      map['iban'] = Variable<String>(iban.value);
    }
    if (paypal.present) {
      map['paypal'] = Variable<String>(paypal.value);
    }
    if (revolut.present) {
      map['revolut'] = Variable<String>(revolut.value);
    }
    if (skrill.present) {
      map['skrill'] = Variable<String>(skrill.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GarageInfoCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('town: $town, ')
          ..write('city: $city, ')
          ..write('postCode: $postCode, ')
          ..write('phone: $phone, ')
          ..write('regNo: $regNo, ')
          ..write('taxVat: $taxVat, ')
          ..write('email: $email, ')
          ..write('bankName: $bankName, ')
          ..write('sortCode: $sortCode, ')
          ..write('bic: $bic, ')
          ..write('iban: $iban, ')
          ..write('paypal: $paypal, ')
          ..write('revolut: $revolut, ')
          ..write('skrill: $skrill')
          ..write(')'))
        .toString();
  }
}

class $ExpensesTable extends Expenses with TableInfo<$ExpensesTable, Expense> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpensesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _definitionMeta = const VerificationMeta(
    'definition',
  );
  @override
  late final GeneratedColumn<String> definition = GeneratedColumn<String>(
    'definition',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _rateMeta = const VerificationMeta('rate');
  @override
  late final GeneratedColumn<String> rate = GeneratedColumn<String>(
    'rate',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<String> year = GeneratedColumn<String>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _refNrMeta = const VerificationMeta('refNr');
  @override
  late final GeneratedColumn<String> refNr = GeneratedColumn<String>(
    'ref_nr',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    definition,
    description,
    rate,
    year,
    refNr,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expenses';
  @override
  VerificationContext validateIntegrity(
    Insertable<Expense> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('definition')) {
      context.handle(
        _definitionMeta,
        definition.isAcceptableOrUnknown(data['definition']!, _definitionMeta),
      );
    } else if (isInserting) {
      context.missing(_definitionMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('rate')) {
      context.handle(
        _rateMeta,
        rate.isAcceptableOrUnknown(data['rate']!, _rateMeta),
      );
    } else if (isInserting) {
      context.missing(_rateMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    if (data.containsKey('ref_nr')) {
      context.handle(
        _refNrMeta,
        refNr.isAcceptableOrUnknown(data['ref_nr']!, _refNrMeta),
      );
    } else if (isInserting) {
      context.missing(_refNrMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Expense map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Expense(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
      definition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}definition'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      rate: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}rate'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year'],
      )!,
      refNr: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}ref_nr'],
      )!,
    );
  }

  @override
  $ExpensesTable createAlias(String alias) {
    return $ExpensesTable(attachedDatabase, alias);
  }
}

class Expense extends DataClass implements Insertable<Expense> {
  final int id;
  final String date;
  final String definition;
  final String description;
  final String rate;
  final String year;
  final String refNr;
  const Expense({
    required this.id,
    required this.date,
    required this.definition,
    required this.description,
    required this.rate,
    required this.year,
    required this.refNr,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<String>(date);
    map['definition'] = Variable<String>(definition);
    map['description'] = Variable<String>(description);
    map['rate'] = Variable<String>(rate);
    map['year'] = Variable<String>(year);
    map['ref_nr'] = Variable<String>(refNr);
    return map;
  }

  ExpensesCompanion toCompanion(bool nullToAbsent) {
    return ExpensesCompanion(
      id: Value(id),
      date: Value(date),
      definition: Value(definition),
      description: Value(description),
      rate: Value(rate),
      year: Value(year),
      refNr: Value(refNr),
    );
  }

  factory Expense.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Expense(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<String>(json['date']),
      definition: serializer.fromJson<String>(json['definition']),
      description: serializer.fromJson<String>(json['description']),
      rate: serializer.fromJson<String>(json['rate']),
      year: serializer.fromJson<String>(json['year']),
      refNr: serializer.fromJson<String>(json['refNr']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<String>(date),
      'definition': serializer.toJson<String>(definition),
      'description': serializer.toJson<String>(description),
      'rate': serializer.toJson<String>(rate),
      'year': serializer.toJson<String>(year),
      'refNr': serializer.toJson<String>(refNr),
    };
  }

  Expense copyWith({
    int? id,
    String? date,
    String? definition,
    String? description,
    String? rate,
    String? year,
    String? refNr,
  }) => Expense(
    id: id ?? this.id,
    date: date ?? this.date,
    definition: definition ?? this.definition,
    description: description ?? this.description,
    rate: rate ?? this.rate,
    year: year ?? this.year,
    refNr: refNr ?? this.refNr,
  );
  Expense copyWithCompanion(ExpensesCompanion data) {
    return Expense(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      definition: data.definition.present
          ? data.definition.value
          : this.definition,
      description: data.description.present
          ? data.description.value
          : this.description,
      rate: data.rate.present ? data.rate.value : this.rate,
      year: data.year.present ? data.year.value : this.year,
      refNr: data.refNr.present ? data.refNr.value : this.refNr,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Expense(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('definition: $definition, ')
          ..write('description: $description, ')
          ..write('rate: $rate, ')
          ..write('year: $year, ')
          ..write('refNr: $refNr')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, date, definition, description, rate, year, refNr);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Expense &&
          other.id == this.id &&
          other.date == this.date &&
          other.definition == this.definition &&
          other.description == this.description &&
          other.rate == this.rate &&
          other.year == this.year &&
          other.refNr == this.refNr);
}

class ExpensesCompanion extends UpdateCompanion<Expense> {
  final Value<int> id;
  final Value<String> date;
  final Value<String> definition;
  final Value<String> description;
  final Value<String> rate;
  final Value<String> year;
  final Value<String> refNr;
  const ExpensesCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.definition = const Value.absent(),
    this.description = const Value.absent(),
    this.rate = const Value.absent(),
    this.year = const Value.absent(),
    this.refNr = const Value.absent(),
  });
  ExpensesCompanion.insert({
    this.id = const Value.absent(),
    required String date,
    required String definition,
    required String description,
    required String rate,
    required String year,
    required String refNr,
  }) : date = Value(date),
       definition = Value(definition),
       description = Value(description),
       rate = Value(rate),
       year = Value(year),
       refNr = Value(refNr);
  static Insertable<Expense> custom({
    Expression<int>? id,
    Expression<String>? date,
    Expression<String>? definition,
    Expression<String>? description,
    Expression<String>? rate,
    Expression<String>? year,
    Expression<String>? refNr,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (definition != null) 'definition': definition,
      if (description != null) 'description': description,
      if (rate != null) 'rate': rate,
      if (year != null) 'year': year,
      if (refNr != null) 'ref_nr': refNr,
    });
  }

  ExpensesCompanion copyWith({
    Value<int>? id,
    Value<String>? date,
    Value<String>? definition,
    Value<String>? description,
    Value<String>? rate,
    Value<String>? year,
    Value<String>? refNr,
  }) {
    return ExpensesCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      definition: definition ?? this.definition,
      description: description ?? this.description,
      rate: rate ?? this.rate,
      year: year ?? this.year,
      refNr: refNr ?? this.refNr,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (definition.present) {
      map['definition'] = Variable<String>(definition.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rate.present) {
      map['rate'] = Variable<String>(rate.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    if (refNr.present) {
      map['ref_nr'] = Variable<String>(refNr.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpensesCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('definition: $definition, ')
          ..write('description: $description, ')
          ..write('rate: $rate, ')
          ..write('year: $year, ')
          ..write('refNr: $refNr')
          ..write(')'))
        .toString();
  }
}

class $ExpensesTotalTable extends ExpensesTotal
    with TableInfo<$ExpensesTotalTable, ExpensesTotalData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpensesTotalTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<String> time = GeneratedColumn<String>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _supplierMeta = const VerificationMeta(
    'supplier',
  );
  @override
  late final GeneratedColumn<String> supplier = GeneratedColumn<String>(
    'supplier',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidByMeta = const VerificationMeta('paidBy');
  @override
  late final GeneratedColumn<String> paidBy = GeneratedColumn<String>(
    'paid_by',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _paidSumMeta = const VerificationMeta(
    'paidSum',
  );
  @override
  late final GeneratedColumn<String> paidSum = GeneratedColumn<String>(
    'paid_sum',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _yearMeta = const VerificationMeta('year');
  @override
  late final GeneratedColumn<String> year = GeneratedColumn<String>(
    'year',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    date,
    time,
    supplier,
    paidBy,
    paidSum,
    year,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expenses_total';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExpensesTotalData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('supplier')) {
      context.handle(
        _supplierMeta,
        supplier.isAcceptableOrUnknown(data['supplier']!, _supplierMeta),
      );
    } else if (isInserting) {
      context.missing(_supplierMeta);
    }
    if (data.containsKey('paid_by')) {
      context.handle(
        _paidByMeta,
        paidBy.isAcceptableOrUnknown(data['paid_by']!, _paidByMeta),
      );
    } else if (isInserting) {
      context.missing(_paidByMeta);
    }
    if (data.containsKey('paid_sum')) {
      context.handle(
        _paidSumMeta,
        paidSum.isAcceptableOrUnknown(data['paid_sum']!, _paidSumMeta),
      );
    } else if (isInserting) {
      context.missing(_paidSumMeta);
    }
    if (data.containsKey('year')) {
      context.handle(
        _yearMeta,
        year.isAcceptableOrUnknown(data['year']!, _yearMeta),
      );
    } else if (isInserting) {
      context.missing(_yearMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExpensesTotalData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpensesTotalData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}date'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}time'],
      )!,
      supplier: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}supplier'],
      )!,
      paidBy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}paid_by'],
      )!,
      paidSum: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}paid_sum'],
      )!,
      year: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}year'],
      )!,
    );
  }

  @override
  $ExpensesTotalTable createAlias(String alias) {
    return $ExpensesTotalTable(attachedDatabase, alias);
  }
}

class ExpensesTotalData extends DataClass
    implements Insertable<ExpensesTotalData> {
  final int id;
  final String date;
  final String time;
  final String supplier;
  final String paidBy;
  final String paidSum;
  final String year;
  const ExpensesTotalData({
    required this.id,
    required this.date,
    required this.time,
    required this.supplier,
    required this.paidBy,
    required this.paidSum,
    required this.year,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['date'] = Variable<String>(date);
    map['time'] = Variable<String>(time);
    map['supplier'] = Variable<String>(supplier);
    map['paid_by'] = Variable<String>(paidBy);
    map['paid_sum'] = Variable<String>(paidSum);
    map['year'] = Variable<String>(year);
    return map;
  }

  ExpensesTotalCompanion toCompanion(bool nullToAbsent) {
    return ExpensesTotalCompanion(
      id: Value(id),
      date: Value(date),
      time: Value(time),
      supplier: Value(supplier),
      paidBy: Value(paidBy),
      paidSum: Value(paidSum),
      year: Value(year),
    );
  }

  factory ExpensesTotalData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpensesTotalData(
      id: serializer.fromJson<int>(json['id']),
      date: serializer.fromJson<String>(json['date']),
      time: serializer.fromJson<String>(json['time']),
      supplier: serializer.fromJson<String>(json['supplier']),
      paidBy: serializer.fromJson<String>(json['paidBy']),
      paidSum: serializer.fromJson<String>(json['paidSum']),
      year: serializer.fromJson<String>(json['year']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'date': serializer.toJson<String>(date),
      'time': serializer.toJson<String>(time),
      'supplier': serializer.toJson<String>(supplier),
      'paidBy': serializer.toJson<String>(paidBy),
      'paidSum': serializer.toJson<String>(paidSum),
      'year': serializer.toJson<String>(year),
    };
  }

  ExpensesTotalData copyWith({
    int? id,
    String? date,
    String? time,
    String? supplier,
    String? paidBy,
    String? paidSum,
    String? year,
  }) => ExpensesTotalData(
    id: id ?? this.id,
    date: date ?? this.date,
    time: time ?? this.time,
    supplier: supplier ?? this.supplier,
    paidBy: paidBy ?? this.paidBy,
    paidSum: paidSum ?? this.paidSum,
    year: year ?? this.year,
  );
  ExpensesTotalData copyWithCompanion(ExpensesTotalCompanion data) {
    return ExpensesTotalData(
      id: data.id.present ? data.id.value : this.id,
      date: data.date.present ? data.date.value : this.date,
      time: data.time.present ? data.time.value : this.time,
      supplier: data.supplier.present ? data.supplier.value : this.supplier,
      paidBy: data.paidBy.present ? data.paidBy.value : this.paidBy,
      paidSum: data.paidSum.present ? data.paidSum.value : this.paidSum,
      year: data.year.present ? data.year.value : this.year,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExpensesTotalData(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('supplier: $supplier, ')
          ..write('paidBy: $paidBy, ')
          ..write('paidSum: $paidSum, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, date, time, supplier, paidBy, paidSum, year);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpensesTotalData &&
          other.id == this.id &&
          other.date == this.date &&
          other.time == this.time &&
          other.supplier == this.supplier &&
          other.paidBy == this.paidBy &&
          other.paidSum == this.paidSum &&
          other.year == this.year);
}

class ExpensesTotalCompanion extends UpdateCompanion<ExpensesTotalData> {
  final Value<int> id;
  final Value<String> date;
  final Value<String> time;
  final Value<String> supplier;
  final Value<String> paidBy;
  final Value<String> paidSum;
  final Value<String> year;
  const ExpensesTotalCompanion({
    this.id = const Value.absent(),
    this.date = const Value.absent(),
    this.time = const Value.absent(),
    this.supplier = const Value.absent(),
    this.paidBy = const Value.absent(),
    this.paidSum = const Value.absent(),
    this.year = const Value.absent(),
  });
  ExpensesTotalCompanion.insert({
    this.id = const Value.absent(),
    required String date,
    required String time,
    required String supplier,
    required String paidBy,
    required String paidSum,
    required String year,
  }) : date = Value(date),
       time = Value(time),
       supplier = Value(supplier),
       paidBy = Value(paidBy),
       paidSum = Value(paidSum),
       year = Value(year);
  static Insertable<ExpensesTotalData> custom({
    Expression<int>? id,
    Expression<String>? date,
    Expression<String>? time,
    Expression<String>? supplier,
    Expression<String>? paidBy,
    Expression<String>? paidSum,
    Expression<String>? year,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (date != null) 'date': date,
      if (time != null) 'time': time,
      if (supplier != null) 'supplier': supplier,
      if (paidBy != null) 'paid_by': paidBy,
      if (paidSum != null) 'paid_sum': paidSum,
      if (year != null) 'year': year,
    });
  }

  ExpensesTotalCompanion copyWith({
    Value<int>? id,
    Value<String>? date,
    Value<String>? time,
    Value<String>? supplier,
    Value<String>? paidBy,
    Value<String>? paidSum,
    Value<String>? year,
  }) {
    return ExpensesTotalCompanion(
      id: id ?? this.id,
      date: date ?? this.date,
      time: time ?? this.time,
      supplier: supplier ?? this.supplier,
      paidBy: paidBy ?? this.paidBy,
      paidSum: paidSum ?? this.paidSum,
      year: year ?? this.year,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (time.present) {
      map['time'] = Variable<String>(time.value);
    }
    if (supplier.present) {
      map['supplier'] = Variable<String>(supplier.value);
    }
    if (paidBy.present) {
      map['paid_by'] = Variable<String>(paidBy.value);
    }
    if (paidSum.present) {
      map['paid_sum'] = Variable<String>(paidSum.value);
    }
    if (year.present) {
      map['year'] = Variable<String>(year.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpensesTotalCompanion(')
          ..write('id: $id, ')
          ..write('date: $date, ')
          ..write('time: $time, ')
          ..write('supplier: $supplier, ')
          ..write('paidBy: $paidBy, ')
          ..write('paidSum: $paidSum, ')
          ..write('year: $year')
          ..write(')'))
        .toString();
  }
}

class $CarMakesTable extends CarMakes with TableInfo<$CarMakesTable, CarMake> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CarMakesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _makeMeta = const VerificationMeta('make');
  @override
  late final GeneratedColumn<String> make = GeneratedColumn<String>(
    'make',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _modelMeta = const VerificationMeta('model');
  @override
  late final GeneratedColumn<String> model = GeneratedColumn<String>(
    'model',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [make, model];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'car_makes';
  @override
  VerificationContext validateIntegrity(
    Insertable<CarMake> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('make')) {
      context.handle(
        _makeMeta,
        make.isAcceptableOrUnknown(data['make']!, _makeMeta),
      );
    } else if (isInserting) {
      context.missing(_makeMeta);
    }
    if (data.containsKey('model')) {
      context.handle(
        _modelMeta,
        model.isAcceptableOrUnknown(data['model']!, _modelMeta),
      );
    } else if (isInserting) {
      context.missing(_modelMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {make, model};
  @override
  CarMake map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CarMake(
      make: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}make'],
      )!,
      model: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}model'],
      )!,
    );
  }

  @override
  $CarMakesTable createAlias(String alias) {
    return $CarMakesTable(attachedDatabase, alias);
  }
}

class CarMake extends DataClass implements Insertable<CarMake> {
  final String make;
  final String model;
  const CarMake({required this.make, required this.model});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['make'] = Variable<String>(make);
    map['model'] = Variable<String>(model);
    return map;
  }

  CarMakesCompanion toCompanion(bool nullToAbsent) {
    return CarMakesCompanion(make: Value(make), model: Value(model));
  }

  factory CarMake.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CarMake(
      make: serializer.fromJson<String>(json['make']),
      model: serializer.fromJson<String>(json['model']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'make': serializer.toJson<String>(make),
      'model': serializer.toJson<String>(model),
    };
  }

  CarMake copyWith({String? make, String? model}) =>
      CarMake(make: make ?? this.make, model: model ?? this.model);
  CarMake copyWithCompanion(CarMakesCompanion data) {
    return CarMake(
      make: data.make.present ? data.make.value : this.make,
      model: data.model.present ? data.model.value : this.model,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CarMake(')
          ..write('make: $make, ')
          ..write('model: $model')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(make, model);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CarMake &&
          other.make == this.make &&
          other.model == this.model);
}

class CarMakesCompanion extends UpdateCompanion<CarMake> {
  final Value<String> make;
  final Value<String> model;
  final Value<int> rowid;
  const CarMakesCompanion({
    this.make = const Value.absent(),
    this.model = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CarMakesCompanion.insert({
    required String make,
    required String model,
    this.rowid = const Value.absent(),
  }) : make = Value(make),
       model = Value(model);
  static Insertable<CarMake> custom({
    Expression<String>? make,
    Expression<String>? model,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (make != null) 'make': make,
      if (model != null) 'model': model,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CarMakesCompanion copyWith({
    Value<String>? make,
    Value<String>? model,
    Value<int>? rowid,
  }) {
    return CarMakesCompanion(
      make: make ?? this.make,
      model: model ?? this.model,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (make.present) {
      map['make'] = Variable<String>(make.value);
    }
    if (model.present) {
      map['model'] = Variable<String>(model.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CarMakesCompanion(')
          ..write('make: $make, ')
          ..write('model: $model, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CustomersTable customers = $CustomersTable(this);
  late final $ServiceRecordsTable serviceRecords = $ServiceRecordsTable(this);
  late final $PartsTable parts = $PartsTable(this);
  late final $LaborTable labor = $LaborTable(this);
  late final $GarageInfoTable garageInfo = $GarageInfoTable(this);
  late final $ExpensesTable expenses = $ExpensesTable(this);
  late final $ExpensesTotalTable expensesTotal = $ExpensesTotalTable(this);
  late final $CarMakesTable carMakes = $CarMakesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    customers,
    serviceRecords,
    parts,
    labor,
    garageInfo,
    expenses,
    expensesTotal,
    carMakes,
  ];
}

typedef $$CustomersTableCreateCompanionBuilder =
    CustomersCompanion Function({
      Value<int> custNo,
      required String name,
      required String phone,
      required String address,
      required String comments,
      required String appDate,
      required String appTime,
      required String regNr,
      required String make,
      required String model,
      required String fuel,
      required String engCap,
      required String transmission,
      required String engNr,
      required String odometer,
      required String color,
      required String vin,
      required String year,
      required String status,
    });
typedef $$CustomersTableUpdateCompanionBuilder =
    CustomersCompanion Function({
      Value<int> custNo,
      Value<String> name,
      Value<String> phone,
      Value<String> address,
      Value<String> comments,
      Value<String> appDate,
      Value<String> appTime,
      Value<String> regNr,
      Value<String> make,
      Value<String> model,
      Value<String> fuel,
      Value<String> engCap,
      Value<String> transmission,
      Value<String> engNr,
      Value<String> odometer,
      Value<String> color,
      Value<String> vin,
      Value<String> year,
      Value<String> status,
    });

class $$CustomersTableFilterComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get comments => $composableBuilder(
    column: $table.comments,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get appDate => $composableBuilder(
    column: $table.appDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get appTime => $composableBuilder(
    column: $table.appTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get regNr => $composableBuilder(
    column: $table.regNr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get make => $composableBuilder(
    column: $table.make,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fuel => $composableBuilder(
    column: $table.fuel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get engCap => $composableBuilder(
    column: $table.engCap,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get transmission => $composableBuilder(
    column: $table.transmission,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get engNr => $composableBuilder(
    column: $table.engNr,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get odometer => $composableBuilder(
    column: $table.odometer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get vin => $composableBuilder(
    column: $table.vin,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CustomersTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get comments => $composableBuilder(
    column: $table.comments,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get appDate => $composableBuilder(
    column: $table.appDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get appTime => $composableBuilder(
    column: $table.appTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get regNr => $composableBuilder(
    column: $table.regNr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get make => $composableBuilder(
    column: $table.make,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fuel => $composableBuilder(
    column: $table.fuel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get engCap => $composableBuilder(
    column: $table.engCap,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get transmission => $composableBuilder(
    column: $table.transmission,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get engNr => $composableBuilder(
    column: $table.engNr,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get odometer => $composableBuilder(
    column: $table.odometer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get vin => $composableBuilder(
    column: $table.vin,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CustomersTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get custNo =>
      $composableBuilder(column: $table.custNo, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get comments =>
      $composableBuilder(column: $table.comments, builder: (column) => column);

  GeneratedColumn<String> get appDate =>
      $composableBuilder(column: $table.appDate, builder: (column) => column);

  GeneratedColumn<String> get appTime =>
      $composableBuilder(column: $table.appTime, builder: (column) => column);

  GeneratedColumn<String> get regNr =>
      $composableBuilder(column: $table.regNr, builder: (column) => column);

  GeneratedColumn<String> get make =>
      $composableBuilder(column: $table.make, builder: (column) => column);

  GeneratedColumn<String> get model =>
      $composableBuilder(column: $table.model, builder: (column) => column);

  GeneratedColumn<String> get fuel =>
      $composableBuilder(column: $table.fuel, builder: (column) => column);

  GeneratedColumn<String> get engCap =>
      $composableBuilder(column: $table.engCap, builder: (column) => column);

  GeneratedColumn<String> get transmission => $composableBuilder(
    column: $table.transmission,
    builder: (column) => column,
  );

  GeneratedColumn<String> get engNr =>
      $composableBuilder(column: $table.engNr, builder: (column) => column);

  GeneratedColumn<String> get odometer =>
      $composableBuilder(column: $table.odometer, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get vin =>
      $composableBuilder(column: $table.vin, builder: (column) => column);

  GeneratedColumn<String> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);
}

class $$CustomersTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CustomersTable,
          Customer,
          $$CustomersTableFilterComposer,
          $$CustomersTableOrderingComposer,
          $$CustomersTableAnnotationComposer,
          $$CustomersTableCreateCompanionBuilder,
          $$CustomersTableUpdateCompanionBuilder,
          (Customer, BaseReferences<_$AppDatabase, $CustomersTable, Customer>),
          Customer,
          PrefetchHooks Function()
        > {
  $$CustomersTableTableManager(_$AppDatabase db, $CustomersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> custNo = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> address = const Value.absent(),
                Value<String> comments = const Value.absent(),
                Value<String> appDate = const Value.absent(),
                Value<String> appTime = const Value.absent(),
                Value<String> regNr = const Value.absent(),
                Value<String> make = const Value.absent(),
                Value<String> model = const Value.absent(),
                Value<String> fuel = const Value.absent(),
                Value<String> engCap = const Value.absent(),
                Value<String> transmission = const Value.absent(),
                Value<String> engNr = const Value.absent(),
                Value<String> odometer = const Value.absent(),
                Value<String> color = const Value.absent(),
                Value<String> vin = const Value.absent(),
                Value<String> year = const Value.absent(),
                Value<String> status = const Value.absent(),
              }) => CustomersCompanion(
                custNo: custNo,
                name: name,
                phone: phone,
                address: address,
                comments: comments,
                appDate: appDate,
                appTime: appTime,
                regNr: regNr,
                make: make,
                model: model,
                fuel: fuel,
                engCap: engCap,
                transmission: transmission,
                engNr: engNr,
                odometer: odometer,
                color: color,
                vin: vin,
                year: year,
                status: status,
              ),
          createCompanionCallback:
              ({
                Value<int> custNo = const Value.absent(),
                required String name,
                required String phone,
                required String address,
                required String comments,
                required String appDate,
                required String appTime,
                required String regNr,
                required String make,
                required String model,
                required String fuel,
                required String engCap,
                required String transmission,
                required String engNr,
                required String odometer,
                required String color,
                required String vin,
                required String year,
                required String status,
              }) => CustomersCompanion.insert(
                custNo: custNo,
                name: name,
                phone: phone,
                address: address,
                comments: comments,
                appDate: appDate,
                appTime: appTime,
                regNr: regNr,
                make: make,
                model: model,
                fuel: fuel,
                engCap: engCap,
                transmission: transmission,
                engNr: engNr,
                odometer: odometer,
                color: color,
                vin: vin,
                year: year,
                status: status,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CustomersTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CustomersTable,
      Customer,
      $$CustomersTableFilterComposer,
      $$CustomersTableOrderingComposer,
      $$CustomersTableAnnotationComposer,
      $$CustomersTableCreateCompanionBuilder,
      $$CustomersTableUpdateCompanionBuilder,
      (Customer, BaseReferences<_$AppDatabase, $CustomersTable, Customer>),
      Customer,
      PrefetchHooks Function()
    >;
typedef $$ServiceRecordsTableCreateCompanionBuilder =
    ServiceRecordsCompanion Function({
      Value<int> id,
      required int custNo,
      required String jobDoneDate,
      required String jobDoneTime,
      required String partsTotal,
      required String laborTotal,
      required String partsSubTotal,
      required String laborSubTotal,
      required String discount,
      required String totalValue,
      required String paidSum,
      required String paymentMethod,
      required String partsVat,
      required String laborVat,
      required String year,
    });
typedef $$ServiceRecordsTableUpdateCompanionBuilder =
    ServiceRecordsCompanion Function({
      Value<int> id,
      Value<int> custNo,
      Value<String> jobDoneDate,
      Value<String> jobDoneTime,
      Value<String> partsTotal,
      Value<String> laborTotal,
      Value<String> partsSubTotal,
      Value<String> laborSubTotal,
      Value<String> discount,
      Value<String> totalValue,
      Value<String> paidSum,
      Value<String> paymentMethod,
      Value<String> partsVat,
      Value<String> laborVat,
      Value<String> year,
    });

class $$ServiceRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $ServiceRecordsTable> {
  $$ServiceRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jobDoneDate => $composableBuilder(
    column: $table.jobDoneDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get jobDoneTime => $composableBuilder(
    column: $table.jobDoneTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partsTotal => $composableBuilder(
    column: $table.partsTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get laborTotal => $composableBuilder(
    column: $table.laborTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partsSubTotal => $composableBuilder(
    column: $table.partsSubTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get laborSubTotal => $composableBuilder(
    column: $table.laborSubTotal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paidSum => $composableBuilder(
    column: $table.paidSum,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get partsVat => $composableBuilder(
    column: $table.partsVat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get laborVat => $composableBuilder(
    column: $table.laborVat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ServiceRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $ServiceRecordsTable> {
  $$ServiceRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jobDoneDate => $composableBuilder(
    column: $table.jobDoneDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get jobDoneTime => $composableBuilder(
    column: $table.jobDoneTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partsTotal => $composableBuilder(
    column: $table.partsTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get laborTotal => $composableBuilder(
    column: $table.laborTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partsSubTotal => $composableBuilder(
    column: $table.partsSubTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get laborSubTotal => $composableBuilder(
    column: $table.laborSubTotal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get discount => $composableBuilder(
    column: $table.discount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paidSum => $composableBuilder(
    column: $table.paidSum,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get partsVat => $composableBuilder(
    column: $table.partsVat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get laborVat => $composableBuilder(
    column: $table.laborVat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ServiceRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ServiceRecordsTable> {
  $$ServiceRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get custNo =>
      $composableBuilder(column: $table.custNo, builder: (column) => column);

  GeneratedColumn<String> get jobDoneDate => $composableBuilder(
    column: $table.jobDoneDate,
    builder: (column) => column,
  );

  GeneratedColumn<String> get jobDoneTime => $composableBuilder(
    column: $table.jobDoneTime,
    builder: (column) => column,
  );

  GeneratedColumn<String> get partsTotal => $composableBuilder(
    column: $table.partsTotal,
    builder: (column) => column,
  );

  GeneratedColumn<String> get laborTotal => $composableBuilder(
    column: $table.laborTotal,
    builder: (column) => column,
  );

  GeneratedColumn<String> get partsSubTotal => $composableBuilder(
    column: $table.partsSubTotal,
    builder: (column) => column,
  );

  GeneratedColumn<String> get laborSubTotal => $composableBuilder(
    column: $table.laborSubTotal,
    builder: (column) => column,
  );

  GeneratedColumn<String> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<String> get totalValue => $composableBuilder(
    column: $table.totalValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get paidSum =>
      $composableBuilder(column: $table.paidSum, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
    column: $table.paymentMethod,
    builder: (column) => column,
  );

  GeneratedColumn<String> get partsVat =>
      $composableBuilder(column: $table.partsVat, builder: (column) => column);

  GeneratedColumn<String> get laborVat =>
      $composableBuilder(column: $table.laborVat, builder: (column) => column);

  GeneratedColumn<String> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);
}

class $$ServiceRecordsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ServiceRecordsTable,
          ServiceRecord,
          $$ServiceRecordsTableFilterComposer,
          $$ServiceRecordsTableOrderingComposer,
          $$ServiceRecordsTableAnnotationComposer,
          $$ServiceRecordsTableCreateCompanionBuilder,
          $$ServiceRecordsTableUpdateCompanionBuilder,
          (
            ServiceRecord,
            BaseReferences<_$AppDatabase, $ServiceRecordsTable, ServiceRecord>,
          ),
          ServiceRecord,
          PrefetchHooks Function()
        > {
  $$ServiceRecordsTableTableManager(
    _$AppDatabase db,
    $ServiceRecordsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ServiceRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ServiceRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ServiceRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> custNo = const Value.absent(),
                Value<String> jobDoneDate = const Value.absent(),
                Value<String> jobDoneTime = const Value.absent(),
                Value<String> partsTotal = const Value.absent(),
                Value<String> laborTotal = const Value.absent(),
                Value<String> partsSubTotal = const Value.absent(),
                Value<String> laborSubTotal = const Value.absent(),
                Value<String> discount = const Value.absent(),
                Value<String> totalValue = const Value.absent(),
                Value<String> paidSum = const Value.absent(),
                Value<String> paymentMethod = const Value.absent(),
                Value<String> partsVat = const Value.absent(),
                Value<String> laborVat = const Value.absent(),
                Value<String> year = const Value.absent(),
              }) => ServiceRecordsCompanion(
                id: id,
                custNo: custNo,
                jobDoneDate: jobDoneDate,
                jobDoneTime: jobDoneTime,
                partsTotal: partsTotal,
                laborTotal: laborTotal,
                partsSubTotal: partsSubTotal,
                laborSubTotal: laborSubTotal,
                discount: discount,
                totalValue: totalValue,
                paidSum: paidSum,
                paymentMethod: paymentMethod,
                partsVat: partsVat,
                laborVat: laborVat,
                year: year,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int custNo,
                required String jobDoneDate,
                required String jobDoneTime,
                required String partsTotal,
                required String laborTotal,
                required String partsSubTotal,
                required String laborSubTotal,
                required String discount,
                required String totalValue,
                required String paidSum,
                required String paymentMethod,
                required String partsVat,
                required String laborVat,
                required String year,
              }) => ServiceRecordsCompanion.insert(
                id: id,
                custNo: custNo,
                jobDoneDate: jobDoneDate,
                jobDoneTime: jobDoneTime,
                partsTotal: partsTotal,
                laborTotal: laborTotal,
                partsSubTotal: partsSubTotal,
                laborSubTotal: laborSubTotal,
                discount: discount,
                totalValue: totalValue,
                paidSum: paidSum,
                paymentMethod: paymentMethod,
                partsVat: partsVat,
                laborVat: laborVat,
                year: year,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ServiceRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ServiceRecordsTable,
      ServiceRecord,
      $$ServiceRecordsTableFilterComposer,
      $$ServiceRecordsTableOrderingComposer,
      $$ServiceRecordsTableAnnotationComposer,
      $$ServiceRecordsTableCreateCompanionBuilder,
      $$ServiceRecordsTableUpdateCompanionBuilder,
      (
        ServiceRecord,
        BaseReferences<_$AppDatabase, $ServiceRecordsTable, ServiceRecord>,
      ),
      ServiceRecord,
      PrefetchHooks Function()
    >;
typedef $$PartsTableCreateCompanionBuilder =
    PartsCompanion Function({
      Value<int> id,
      required int custNo,
      required String description,
      required String quantity,
      required String rate,
      required String net,
      required String vatRate,
    });
typedef $$PartsTableUpdateCompanionBuilder =
    PartsCompanion Function({
      Value<int> id,
      Value<int> custNo,
      Value<String> description,
      Value<String> quantity,
      Value<String> rate,
      Value<String> net,
      Value<String> vatRate,
    });

class $$PartsTableFilterComposer extends Composer<_$AppDatabase, $PartsTable> {
  $$PartsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rate => $composableBuilder(
    column: $table.rate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get net => $composableBuilder(
    column: $table.net,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get vatRate => $composableBuilder(
    column: $table.vatRate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PartsTableOrderingComposer
    extends Composer<_$AppDatabase, $PartsTable> {
  $$PartsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rate => $composableBuilder(
    column: $table.rate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get net => $composableBuilder(
    column: $table.net,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get vatRate => $composableBuilder(
    column: $table.vatRate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PartsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PartsTable> {
  $$PartsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get custNo =>
      $composableBuilder(column: $table.custNo, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<String> get rate =>
      $composableBuilder(column: $table.rate, builder: (column) => column);

  GeneratedColumn<String> get net =>
      $composableBuilder(column: $table.net, builder: (column) => column);

  GeneratedColumn<String> get vatRate =>
      $composableBuilder(column: $table.vatRate, builder: (column) => column);
}

class $$PartsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PartsTable,
          Part,
          $$PartsTableFilterComposer,
          $$PartsTableOrderingComposer,
          $$PartsTableAnnotationComposer,
          $$PartsTableCreateCompanionBuilder,
          $$PartsTableUpdateCompanionBuilder,
          (Part, BaseReferences<_$AppDatabase, $PartsTable, Part>),
          Part,
          PrefetchHooks Function()
        > {
  $$PartsTableTableManager(_$AppDatabase db, $PartsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PartsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PartsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PartsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> custNo = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> quantity = const Value.absent(),
                Value<String> rate = const Value.absent(),
                Value<String> net = const Value.absent(),
                Value<String> vatRate = const Value.absent(),
              }) => PartsCompanion(
                id: id,
                custNo: custNo,
                description: description,
                quantity: quantity,
                rate: rate,
                net: net,
                vatRate: vatRate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int custNo,
                required String description,
                required String quantity,
                required String rate,
                required String net,
                required String vatRate,
              }) => PartsCompanion.insert(
                id: id,
                custNo: custNo,
                description: description,
                quantity: quantity,
                rate: rate,
                net: net,
                vatRate: vatRate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PartsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PartsTable,
      Part,
      $$PartsTableFilterComposer,
      $$PartsTableOrderingComposer,
      $$PartsTableAnnotationComposer,
      $$PartsTableCreateCompanionBuilder,
      $$PartsTableUpdateCompanionBuilder,
      (Part, BaseReferences<_$AppDatabase, $PartsTable, Part>),
      Part,
      PrefetchHooks Function()
    >;
typedef $$LaborTableCreateCompanionBuilder =
    LaborCompanion Function({
      Value<int> id,
      required int custNo,
      required String description,
      required String quantity,
      required String rate,
      required String net,
      required String vatRate,
    });
typedef $$LaborTableUpdateCompanionBuilder =
    LaborCompanion Function({
      Value<int> id,
      Value<int> custNo,
      Value<String> description,
      Value<String> quantity,
      Value<String> rate,
      Value<String> net,
      Value<String> vatRate,
    });

class $$LaborTableFilterComposer extends Composer<_$AppDatabase, $LaborTable> {
  $$LaborTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rate => $composableBuilder(
    column: $table.rate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get net => $composableBuilder(
    column: $table.net,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get vatRate => $composableBuilder(
    column: $table.vatRate,
    builder: (column) => ColumnFilters(column),
  );
}

class $$LaborTableOrderingComposer
    extends Composer<_$AppDatabase, $LaborTable> {
  $$LaborTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get custNo => $composableBuilder(
    column: $table.custNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rate => $composableBuilder(
    column: $table.rate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get net => $composableBuilder(
    column: $table.net,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get vatRate => $composableBuilder(
    column: $table.vatRate,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$LaborTableAnnotationComposer
    extends Composer<_$AppDatabase, $LaborTable> {
  $$LaborTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get custNo =>
      $composableBuilder(column: $table.custNo, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<String> get rate =>
      $composableBuilder(column: $table.rate, builder: (column) => column);

  GeneratedColumn<String> get net =>
      $composableBuilder(column: $table.net, builder: (column) => column);

  GeneratedColumn<String> get vatRate =>
      $composableBuilder(column: $table.vatRate, builder: (column) => column);
}

class $$LaborTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LaborTable,
          LaborData,
          $$LaborTableFilterComposer,
          $$LaborTableOrderingComposer,
          $$LaborTableAnnotationComposer,
          $$LaborTableCreateCompanionBuilder,
          $$LaborTableUpdateCompanionBuilder,
          (LaborData, BaseReferences<_$AppDatabase, $LaborTable, LaborData>),
          LaborData,
          PrefetchHooks Function()
        > {
  $$LaborTableTableManager(_$AppDatabase db, $LaborTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LaborTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LaborTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LaborTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> custNo = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> quantity = const Value.absent(),
                Value<String> rate = const Value.absent(),
                Value<String> net = const Value.absent(),
                Value<String> vatRate = const Value.absent(),
              }) => LaborCompanion(
                id: id,
                custNo: custNo,
                description: description,
                quantity: quantity,
                rate: rate,
                net: net,
                vatRate: vatRate,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int custNo,
                required String description,
                required String quantity,
                required String rate,
                required String net,
                required String vatRate,
              }) => LaborCompanion.insert(
                id: id,
                custNo: custNo,
                description: description,
                quantity: quantity,
                rate: rate,
                net: net,
                vatRate: vatRate,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$LaborTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LaborTable,
      LaborData,
      $$LaborTableFilterComposer,
      $$LaborTableOrderingComposer,
      $$LaborTableAnnotationComposer,
      $$LaborTableCreateCompanionBuilder,
      $$LaborTableUpdateCompanionBuilder,
      (LaborData, BaseReferences<_$AppDatabase, $LaborTable, LaborData>),
      LaborData,
      PrefetchHooks Function()
    >;
typedef $$GarageInfoTableCreateCompanionBuilder =
    GarageInfoCompanion Function({
      Value<int> id,
      required String name,
      required String address1,
      required String address2,
      required String town,
      required String city,
      required String postCode,
      required String phone,
      required String regNo,
      required String taxVat,
      required String email,
      required String bankName,
      required String sortCode,
      required String bic,
      required String iban,
      required String paypal,
      required String revolut,
      required String skrill,
    });
typedef $$GarageInfoTableUpdateCompanionBuilder =
    GarageInfoCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> address1,
      Value<String> address2,
      Value<String> town,
      Value<String> city,
      Value<String> postCode,
      Value<String> phone,
      Value<String> regNo,
      Value<String> taxVat,
      Value<String> email,
      Value<String> bankName,
      Value<String> sortCode,
      Value<String> bic,
      Value<String> iban,
      Value<String> paypal,
      Value<String> revolut,
      Value<String> skrill,
    });

class $$GarageInfoTableFilterComposer
    extends Composer<_$AppDatabase, $GarageInfoTable> {
  $$GarageInfoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address1 => $composableBuilder(
    column: $table.address1,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address2 => $composableBuilder(
    column: $table.address2,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get town => $composableBuilder(
    column: $table.town,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get postCode => $composableBuilder(
    column: $table.postCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get regNo => $composableBuilder(
    column: $table.regNo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get taxVat => $composableBuilder(
    column: $table.taxVat,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bankName => $composableBuilder(
    column: $table.bankName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sortCode => $composableBuilder(
    column: $table.sortCode,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bic => $composableBuilder(
    column: $table.bic,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get iban => $composableBuilder(
    column: $table.iban,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paypal => $composableBuilder(
    column: $table.paypal,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get revolut => $composableBuilder(
    column: $table.revolut,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get skrill => $composableBuilder(
    column: $table.skrill,
    builder: (column) => ColumnFilters(column),
  );
}

class $$GarageInfoTableOrderingComposer
    extends Composer<_$AppDatabase, $GarageInfoTable> {
  $$GarageInfoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address1 => $composableBuilder(
    column: $table.address1,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address2 => $composableBuilder(
    column: $table.address2,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get town => $composableBuilder(
    column: $table.town,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get city => $composableBuilder(
    column: $table.city,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get postCode => $composableBuilder(
    column: $table.postCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get regNo => $composableBuilder(
    column: $table.regNo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get taxVat => $composableBuilder(
    column: $table.taxVat,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bankName => $composableBuilder(
    column: $table.bankName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sortCode => $composableBuilder(
    column: $table.sortCode,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bic => $composableBuilder(
    column: $table.bic,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get iban => $composableBuilder(
    column: $table.iban,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paypal => $composableBuilder(
    column: $table.paypal,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get revolut => $composableBuilder(
    column: $table.revolut,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get skrill => $composableBuilder(
    column: $table.skrill,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$GarageInfoTableAnnotationComposer
    extends Composer<_$AppDatabase, $GarageInfoTable> {
  $$GarageInfoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get address1 =>
      $composableBuilder(column: $table.address1, builder: (column) => column);

  GeneratedColumn<String> get address2 =>
      $composableBuilder(column: $table.address2, builder: (column) => column);

  GeneratedColumn<String> get town =>
      $composableBuilder(column: $table.town, builder: (column) => column);

  GeneratedColumn<String> get city =>
      $composableBuilder(column: $table.city, builder: (column) => column);

  GeneratedColumn<String> get postCode =>
      $composableBuilder(column: $table.postCode, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get regNo =>
      $composableBuilder(column: $table.regNo, builder: (column) => column);

  GeneratedColumn<String> get taxVat =>
      $composableBuilder(column: $table.taxVat, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get bankName =>
      $composableBuilder(column: $table.bankName, builder: (column) => column);

  GeneratedColumn<String> get sortCode =>
      $composableBuilder(column: $table.sortCode, builder: (column) => column);

  GeneratedColumn<String> get bic =>
      $composableBuilder(column: $table.bic, builder: (column) => column);

  GeneratedColumn<String> get iban =>
      $composableBuilder(column: $table.iban, builder: (column) => column);

  GeneratedColumn<String> get paypal =>
      $composableBuilder(column: $table.paypal, builder: (column) => column);

  GeneratedColumn<String> get revolut =>
      $composableBuilder(column: $table.revolut, builder: (column) => column);

  GeneratedColumn<String> get skrill =>
      $composableBuilder(column: $table.skrill, builder: (column) => column);
}

class $$GarageInfoTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $GarageInfoTable,
          GarageInfoData,
          $$GarageInfoTableFilterComposer,
          $$GarageInfoTableOrderingComposer,
          $$GarageInfoTableAnnotationComposer,
          $$GarageInfoTableCreateCompanionBuilder,
          $$GarageInfoTableUpdateCompanionBuilder,
          (
            GarageInfoData,
            BaseReferences<_$AppDatabase, $GarageInfoTable, GarageInfoData>,
          ),
          GarageInfoData,
          PrefetchHooks Function()
        > {
  $$GarageInfoTableTableManager(_$AppDatabase db, $GarageInfoTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GarageInfoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GarageInfoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GarageInfoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> address1 = const Value.absent(),
                Value<String> address2 = const Value.absent(),
                Value<String> town = const Value.absent(),
                Value<String> city = const Value.absent(),
                Value<String> postCode = const Value.absent(),
                Value<String> phone = const Value.absent(),
                Value<String> regNo = const Value.absent(),
                Value<String> taxVat = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<String> bankName = const Value.absent(),
                Value<String> sortCode = const Value.absent(),
                Value<String> bic = const Value.absent(),
                Value<String> iban = const Value.absent(),
                Value<String> paypal = const Value.absent(),
                Value<String> revolut = const Value.absent(),
                Value<String> skrill = const Value.absent(),
              }) => GarageInfoCompanion(
                id: id,
                name: name,
                address1: address1,
                address2: address2,
                town: town,
                city: city,
                postCode: postCode,
                phone: phone,
                regNo: regNo,
                taxVat: taxVat,
                email: email,
                bankName: bankName,
                sortCode: sortCode,
                bic: bic,
                iban: iban,
                paypal: paypal,
                revolut: revolut,
                skrill: skrill,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String address1,
                required String address2,
                required String town,
                required String city,
                required String postCode,
                required String phone,
                required String regNo,
                required String taxVat,
                required String email,
                required String bankName,
                required String sortCode,
                required String bic,
                required String iban,
                required String paypal,
                required String revolut,
                required String skrill,
              }) => GarageInfoCompanion.insert(
                id: id,
                name: name,
                address1: address1,
                address2: address2,
                town: town,
                city: city,
                postCode: postCode,
                phone: phone,
                regNo: regNo,
                taxVat: taxVat,
                email: email,
                bankName: bankName,
                sortCode: sortCode,
                bic: bic,
                iban: iban,
                paypal: paypal,
                revolut: revolut,
                skrill: skrill,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$GarageInfoTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $GarageInfoTable,
      GarageInfoData,
      $$GarageInfoTableFilterComposer,
      $$GarageInfoTableOrderingComposer,
      $$GarageInfoTableAnnotationComposer,
      $$GarageInfoTableCreateCompanionBuilder,
      $$GarageInfoTableUpdateCompanionBuilder,
      (
        GarageInfoData,
        BaseReferences<_$AppDatabase, $GarageInfoTable, GarageInfoData>,
      ),
      GarageInfoData,
      PrefetchHooks Function()
    >;
typedef $$ExpensesTableCreateCompanionBuilder =
    ExpensesCompanion Function({
      Value<int> id,
      required String date,
      required String definition,
      required String description,
      required String rate,
      required String year,
      required String refNr,
    });
typedef $$ExpensesTableUpdateCompanionBuilder =
    ExpensesCompanion Function({
      Value<int> id,
      Value<String> date,
      Value<String> definition,
      Value<String> description,
      Value<String> rate,
      Value<String> year,
      Value<String> refNr,
    });

class $$ExpensesTableFilterComposer
    extends Composer<_$AppDatabase, $ExpensesTable> {
  $$ExpensesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get definition => $composableBuilder(
    column: $table.definition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rate => $composableBuilder(
    column: $table.rate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get refNr => $composableBuilder(
    column: $table.refNr,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExpensesTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpensesTable> {
  $$ExpensesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get definition => $composableBuilder(
    column: $table.definition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rate => $composableBuilder(
    column: $table.rate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get refNr => $composableBuilder(
    column: $table.refNr,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExpensesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpensesTable> {
  $$ExpensesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get definition => $composableBuilder(
    column: $table.definition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get rate =>
      $composableBuilder(column: $table.rate, builder: (column) => column);

  GeneratedColumn<String> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);

  GeneratedColumn<String> get refNr =>
      $composableBuilder(column: $table.refNr, builder: (column) => column);
}

class $$ExpensesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExpensesTable,
          Expense,
          $$ExpensesTableFilterComposer,
          $$ExpensesTableOrderingComposer,
          $$ExpensesTableAnnotationComposer,
          $$ExpensesTableCreateCompanionBuilder,
          $$ExpensesTableUpdateCompanionBuilder,
          (Expense, BaseReferences<_$AppDatabase, $ExpensesTable, Expense>),
          Expense,
          PrefetchHooks Function()
        > {
  $$ExpensesTableTableManager(_$AppDatabase db, $ExpensesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpensesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpensesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpensesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> date = const Value.absent(),
                Value<String> definition = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> rate = const Value.absent(),
                Value<String> year = const Value.absent(),
                Value<String> refNr = const Value.absent(),
              }) => ExpensesCompanion(
                id: id,
                date: date,
                definition: definition,
                description: description,
                rate: rate,
                year: year,
                refNr: refNr,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String date,
                required String definition,
                required String description,
                required String rate,
                required String year,
                required String refNr,
              }) => ExpensesCompanion.insert(
                id: id,
                date: date,
                definition: definition,
                description: description,
                rate: rate,
                year: year,
                refNr: refNr,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExpensesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExpensesTable,
      Expense,
      $$ExpensesTableFilterComposer,
      $$ExpensesTableOrderingComposer,
      $$ExpensesTableAnnotationComposer,
      $$ExpensesTableCreateCompanionBuilder,
      $$ExpensesTableUpdateCompanionBuilder,
      (Expense, BaseReferences<_$AppDatabase, $ExpensesTable, Expense>),
      Expense,
      PrefetchHooks Function()
    >;
typedef $$ExpensesTotalTableCreateCompanionBuilder =
    ExpensesTotalCompanion Function({
      Value<int> id,
      required String date,
      required String time,
      required String supplier,
      required String paidBy,
      required String paidSum,
      required String year,
    });
typedef $$ExpensesTotalTableUpdateCompanionBuilder =
    ExpensesTotalCompanion Function({
      Value<int> id,
      Value<String> date,
      Value<String> time,
      Value<String> supplier,
      Value<String> paidBy,
      Value<String> paidSum,
      Value<String> year,
    });

class $$ExpensesTotalTableFilterComposer
    extends Composer<_$AppDatabase, $ExpensesTotalTable> {
  $$ExpensesTotalTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get supplier => $composableBuilder(
    column: $table.supplier,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paidBy => $composableBuilder(
    column: $table.paidBy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get paidSum => $composableBuilder(
    column: $table.paidSum,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExpensesTotalTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpensesTotalTable> {
  $$ExpensesTotalTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get supplier => $composableBuilder(
    column: $table.supplier,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paidBy => $composableBuilder(
    column: $table.paidBy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get paidSum => $composableBuilder(
    column: $table.paidSum,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get year => $composableBuilder(
    column: $table.year,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExpensesTotalTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpensesTotalTable> {
  $$ExpensesTotalTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get supplier =>
      $composableBuilder(column: $table.supplier, builder: (column) => column);

  GeneratedColumn<String> get paidBy =>
      $composableBuilder(column: $table.paidBy, builder: (column) => column);

  GeneratedColumn<String> get paidSum =>
      $composableBuilder(column: $table.paidSum, builder: (column) => column);

  GeneratedColumn<String> get year =>
      $composableBuilder(column: $table.year, builder: (column) => column);
}

class $$ExpensesTotalTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExpensesTotalTable,
          ExpensesTotalData,
          $$ExpensesTotalTableFilterComposer,
          $$ExpensesTotalTableOrderingComposer,
          $$ExpensesTotalTableAnnotationComposer,
          $$ExpensesTotalTableCreateCompanionBuilder,
          $$ExpensesTotalTableUpdateCompanionBuilder,
          (
            ExpensesTotalData,
            BaseReferences<
              _$AppDatabase,
              $ExpensesTotalTable,
              ExpensesTotalData
            >,
          ),
          ExpensesTotalData,
          PrefetchHooks Function()
        > {
  $$ExpensesTotalTableTableManager(_$AppDatabase db, $ExpensesTotalTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpensesTotalTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpensesTotalTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpensesTotalTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> date = const Value.absent(),
                Value<String> time = const Value.absent(),
                Value<String> supplier = const Value.absent(),
                Value<String> paidBy = const Value.absent(),
                Value<String> paidSum = const Value.absent(),
                Value<String> year = const Value.absent(),
              }) => ExpensesTotalCompanion(
                id: id,
                date: date,
                time: time,
                supplier: supplier,
                paidBy: paidBy,
                paidSum: paidSum,
                year: year,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String date,
                required String time,
                required String supplier,
                required String paidBy,
                required String paidSum,
                required String year,
              }) => ExpensesTotalCompanion.insert(
                id: id,
                date: date,
                time: time,
                supplier: supplier,
                paidBy: paidBy,
                paidSum: paidSum,
                year: year,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExpensesTotalTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExpensesTotalTable,
      ExpensesTotalData,
      $$ExpensesTotalTableFilterComposer,
      $$ExpensesTotalTableOrderingComposer,
      $$ExpensesTotalTableAnnotationComposer,
      $$ExpensesTotalTableCreateCompanionBuilder,
      $$ExpensesTotalTableUpdateCompanionBuilder,
      (
        ExpensesTotalData,
        BaseReferences<_$AppDatabase, $ExpensesTotalTable, ExpensesTotalData>,
      ),
      ExpensesTotalData,
      PrefetchHooks Function()
    >;
typedef $$CarMakesTableCreateCompanionBuilder =
    CarMakesCompanion Function({
      required String make,
      required String model,
      Value<int> rowid,
    });
typedef $$CarMakesTableUpdateCompanionBuilder =
    CarMakesCompanion Function({
      Value<String> make,
      Value<String> model,
      Value<int> rowid,
    });

class $$CarMakesTableFilterComposer
    extends Composer<_$AppDatabase, $CarMakesTable> {
  $$CarMakesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get make => $composableBuilder(
    column: $table.make,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CarMakesTableOrderingComposer
    extends Composer<_$AppDatabase, $CarMakesTable> {
  $$CarMakesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get make => $composableBuilder(
    column: $table.make,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get model => $composableBuilder(
    column: $table.model,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CarMakesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CarMakesTable> {
  $$CarMakesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get make =>
      $composableBuilder(column: $table.make, builder: (column) => column);

  GeneratedColumn<String> get model =>
      $composableBuilder(column: $table.model, builder: (column) => column);
}

class $$CarMakesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CarMakesTable,
          CarMake,
          $$CarMakesTableFilterComposer,
          $$CarMakesTableOrderingComposer,
          $$CarMakesTableAnnotationComposer,
          $$CarMakesTableCreateCompanionBuilder,
          $$CarMakesTableUpdateCompanionBuilder,
          (CarMake, BaseReferences<_$AppDatabase, $CarMakesTable, CarMake>),
          CarMake,
          PrefetchHooks Function()
        > {
  $$CarMakesTableTableManager(_$AppDatabase db, $CarMakesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CarMakesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CarMakesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CarMakesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> make = const Value.absent(),
                Value<String> model = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CarMakesCompanion(make: make, model: model, rowid: rowid),
          createCompanionCallback:
              ({
                required String make,
                required String model,
                Value<int> rowid = const Value.absent(),
              }) => CarMakesCompanion.insert(
                make: make,
                model: model,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CarMakesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CarMakesTable,
      CarMake,
      $$CarMakesTableFilterComposer,
      $$CarMakesTableOrderingComposer,
      $$CarMakesTableAnnotationComposer,
      $$CarMakesTableCreateCompanionBuilder,
      $$CarMakesTableUpdateCompanionBuilder,
      (CarMake, BaseReferences<_$AppDatabase, $CarMakesTable, CarMake>),
      CarMake,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CustomersTableTableManager get customers =>
      $$CustomersTableTableManager(_db, _db.customers);
  $$ServiceRecordsTableTableManager get serviceRecords =>
      $$ServiceRecordsTableTableManager(_db, _db.serviceRecords);
  $$PartsTableTableManager get parts =>
      $$PartsTableTableManager(_db, _db.parts);
  $$LaborTableTableManager get labor =>
      $$LaborTableTableManager(_db, _db.labor);
  $$GarageInfoTableTableManager get garageInfo =>
      $$GarageInfoTableTableManager(_db, _db.garageInfo);
  $$ExpensesTableTableManager get expenses =>
      $$ExpensesTableTableManager(_db, _db.expenses);
  $$ExpensesTotalTableTableManager get expensesTotal =>
      $$ExpensesTotalTableTableManager(_db, _db.expensesTotal);
  $$CarMakesTableTableManager get carMakes =>
      $$CarMakesTableTableManager(_db, _db.carMakes);
}
