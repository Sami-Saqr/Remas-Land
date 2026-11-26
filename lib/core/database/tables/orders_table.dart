import 'package:drift/drift.dart';

/// Placed customer orders (monetary columns stored in integer piasters).
class Orders extends Table {
  TextColumn get id => text()();
  TextColumn get orderNumber => text()();
  TextColumn get status => text()(); // preparing, on_the_way, delivered
  TextColumn get addressSummary => text()();
  TextColumn get paymentMethod => text()();
  IntColumn get subtotalPiasters => integer()();
  IntColumn get deliveryFeePiasters => integer()();
  IntColumn get packagingFeePiasters => integer()();
  IntColumn get discountPiasters => integer()();
  IntColumn get totalPiasters => integer()();
  TextColumn get promoCode => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
