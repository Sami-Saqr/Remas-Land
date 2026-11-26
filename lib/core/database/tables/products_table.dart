import 'package:drift/drift.dart';

import 'package:remas_land/core/database/tables/brands_table.dart';
import 'package:remas_land/core/database/tables/categories_table.dart';

/// Local product catalog table (monetary amounts stored in integer piasters).
class Products extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get subtitle => text()();
  TextColumn get description => text()();
  TextColumn get categoryId => text().references(Categories, #id)();
  TextColumn get brandId => text().references(Brands, #id)();
  TextColumn get farmLabel => text()();
  TextColumn get unitLabel => text()();
  IntColumn get pricePiasters => integer()();
  IntColumn get originalPricePiasters => integer().nullable()();
  TextColumn get badgeText => text().nullable()();
  TextColumn get badgeTone => text().withDefault(const Constant('primary'))();
  TextColumn get imageAsset => text()();
  RealColumn get rating => real().withDefault(const Constant(4.8))();
  IntColumn get reviewCount => integer().withDefault(const Constant(0))();
  IntColumn get stockCount => integer().withDefault(const Constant(50))();
  BoolColumn get isSpotlight => boolean().withDefault(const Constant(false))();
  BoolColumn get isSpecialOffer =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get isNewArrival => boolean().withDefault(const Constant(false))();
  BoolColumn get isPopular => boolean().withDefault(const Constant(false))();
  BoolColumn get isPairingSuggestion =>
      boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
