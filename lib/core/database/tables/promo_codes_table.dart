import 'package:drift/drift.dart';

/// Promotional discount codes usable in Cart.
class PromoCodes extends Table {
  TextColumn get code => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get discountType => text()(); // 'fixed' or 'percent'
  IntColumn get discountValue => integer()();
  IntColumn get minOrderPiasters => integer().withDefault(const Constant(0))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();

  @override
  Set<Column<Object>> get primaryKey => {code};
}
