import 'package:drift/drift.dart';

/// Product categories and aisle metadata table.
class Categories extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get subtitle => text()();
  TextColumn get imageAsset => text()();
  TextColumn get bannerTitle => text()();
  TextColumn get bannerSubtitle => text()();
  TextColumn get bannerBadge => text()();
  TextColumn get bannerDiscountText => text()();
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();
  BoolColumn get isExploreFeatured =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get isTrending => boolean().withDefault(const Constant(false))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
