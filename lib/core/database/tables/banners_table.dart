import 'package:drift/drift.dart';

/// Promotional hero banners and curated deal cards on Home.
class Banners extends Table {
  TextColumn get id => text()();
  TextColumn get badgeText => text()();
  TextColumn get title => text()();
  TextColumn get subtitle => text().nullable()();
  TextColumn get ctaLabel => text()();
  TextColumn get targetCategoryId => text()();
  TextColumn get imageAsset => text()();
  IntColumn get gradientStartHex => integer()();
  IntColumn get gradientEndHex => integer()();
  IntColumn get ctaTextColorHex => integer()();
  TextColumn get bannerType => text()(); // 'hero' or 'deal'
  IntColumn get sortOrder => integer().withDefault(const Constant(0))();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
