import 'package:drift/drift.dart';

/// Wallet ledger entries (amountPiasters signed: negative debit, positive credit).
class WalletTransactions extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get subtitle => text()();
  IntColumn get amountPiasters => integer()();
  TextColumn get type => text()(); // purchase, topup, reward, transfer
  TextColumn get statusLabel => text()();
  TextColumn get referenceCode => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
