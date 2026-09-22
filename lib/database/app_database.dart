import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class Customers extends Table {
  IntColumn get custNo => integer()();
  TextColumn get name => text()();
  TextColumn get phone => text()();
  TextColumn get address => text()();
  TextColumn get comments => text()();
  TextColumn get appDate => text()();
  TextColumn get appTime => text()();
  TextColumn get regNr => text()();
  TextColumn get make => text()();
  TextColumn get model => text()();
  TextColumn get fuel => text()();
  TextColumn get engCap => text()();
  TextColumn get transmission => text()();
  TextColumn get engNr => text()();
  TextColumn get odometer => text()();
  TextColumn get color => text()();
  TextColumn get vin => text()();
  TextColumn get year => text()();
  TextColumn get status => text()();

  @override
  Set<Column> get primaryKey => {custNo};
}

class ServiceRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get custNo =>
      integer().references(Customers, #custNo, onDelete: KeyAction.cascade)();
  TextColumn get jobDoneDate => text()();
  TextColumn get jobDoneTime => text()();
  TextColumn get partsTotal => text()();
  TextColumn get laborTotal => text()();
  TextColumn get partsSubTotal => text()();
  TextColumn get laborSubTotal => text()();
  TextColumn get discount => text()();
  TextColumn get totalValue => text()();
  TextColumn get paidSum => text()();
  TextColumn get paymentMethod => text()();
  TextColumn get partsVat => text()();
  TextColumn get laborVat => text()();
  TextColumn get year => text()();
}

class Parts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get custNo =>
      integer().references(Customers, #custNo, onDelete: KeyAction.cascade)();
  TextColumn get description => text()();
  TextColumn get quantity => text()();
  TextColumn get rate => text()();
  TextColumn get net => text()();
  TextColumn get vatRate => text()();
}

class Labor extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get custNo =>
      integer().references(Customers, #custNo, onDelete: KeyAction.cascade)();
  TextColumn get description => text()();
  TextColumn get quantity => text()();
  TextColumn get rate => text()();
  TextColumn get net => text()();
  TextColumn get vatRate => text()();
}

class GarageInfo extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get address1 => text()();
  TextColumn get address2 => text()();
  TextColumn get town => text()();
  TextColumn get city => text()();
  TextColumn get postCode => text()();
  TextColumn get phone => text()();
  TextColumn get regNo => text()();
  TextColumn get taxVat => text()();
  TextColumn get email => text()();
  TextColumn get bankName => text()();
  TextColumn get sortCode => text()();
  TextColumn get bic => text()();
  TextColumn get iban => text()();
  TextColumn get paypal => text()();
  TextColumn get revolut => text()();
  TextColumn get skrill => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class Expenses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  TextColumn get definition => text()();
  TextColumn get description => text()();
  TextColumn get rate => text()();
  TextColumn get year => text()();
  TextColumn get refNr => text()();
}

class ExpensesTotal extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get date => text()();
  TextColumn get time => text()();
  TextColumn get supplier => text()();
  TextColumn get paidBy => text()();
  TextColumn get paidSum => text()();
  TextColumn get year => text()();
}

class CarMakes extends Table {
  TextColumn get make => text()();
  TextColumn get model => text()();

  @override
  Set<Column> get primaryKey => {make, model};
}

@DriftDatabase(tables: [
  Customers,
  ServiceRecords,
  Parts,
  Labor,
  GarageInfo,
  Expenses,
  ExpensesTotal,
  CarMakes,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase._() : super(driftDatabase(name: 'pgm_database'));

  static final AppDatabase _instance = AppDatabase._();
  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 1;
}
