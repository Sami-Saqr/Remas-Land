import 'package:drift/drift.dart';

/// Saved local delivery addresses.
@DataClassName('Address')
class Addresses extends Table {
  TextColumn get id => text()();
  TextColumn get label => text()();
  TextColumn get street => text()();
  TextColumn get area => text()();
  TextColumn get city => text()();
  TextColumn get etaText => text()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
