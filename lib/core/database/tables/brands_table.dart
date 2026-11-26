import 'package:drift/drift.dart';

/// Partner dairy & pastry brands shown in "Shop by Brands".
class Brands extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get subtitle => text()();
  IntColumn get bgColorHex => integer()();
  IntColumn get textColorHex => integer()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
