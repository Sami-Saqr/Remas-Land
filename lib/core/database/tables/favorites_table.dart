import 'package:drift/drift.dart';

import 'package:remas_land/core/database/tables/products_table.dart';

/// Favorited product IDs.
class Favorites extends Table {
  TextColumn get productId => text().references(Products, #id)();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column<Object>> get primaryKey => {productId};
}
