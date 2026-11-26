import 'package:drift/drift.dart';

/// Saved payment cards stored locally for wallet top-up and checkout.
class SavedCards extends Table {
  TextColumn get id => text()();
  TextColumn get brand => text()();
  TextColumn get last4 => text()();
  TextColumn get expiry => text()();
  TextColumn get holderName => text()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
