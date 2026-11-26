import 'package:drift/drift.dart';

import 'package:remas_land/core/database/tables/products_table.dart';

/// Persistent shopping cart line items.
class CartItems extends Table {
  TextColumn get productId => text().references(Products, #id)();
  IntColumn get quantity => integer().withDefault(const Constant(1))();
  DateTimeColumn get addedAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {productId};
}
