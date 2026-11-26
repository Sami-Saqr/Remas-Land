import 'package:drift/drift.dart';

import 'package:remas_land/core/database/tables/orders_table.dart';

/// Line items belonging to a placed order (snapshot at checkout time).
class OrderItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderId => text().references(Orders, #id)();
  TextColumn get productId => text()();
  TextColumn get productName => text()();
  TextColumn get unitLabel => text()();
  TextColumn get imageAsset => text()();
  IntColumn get unitPricePiasters => integer()();
  IntColumn get quantity => integer()();
}
