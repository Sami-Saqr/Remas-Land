import 'package:drift/drift.dart';

/// Local wallet & Remas Privilege digital card state.
class WalletAccounts extends Table {
  TextColumn get id => text()();
  IntColumn get balancePiasters => integer().withDefault(const Constant(0))();
  BoolColumn get isPrivilegeActive =>
      boolean().withDefault(const Constant(false))();
  TextColumn get cardLast4 => text()();
  TextColumn get cardHolder => text()();
  TextColumn get cardExpiry => text()();
  IntColumn get cashbackPercent => integer().withDefault(const Constant(5))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
