import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/seed/database_seeder.dart';
import 'package:remas_land/core/storage/prefs_service.dart';
import 'package:remas_land/features/catalog/data/catalog_repository_impl.dart';
import 'package:remas_land/features/search/data/search_repository_impl.dart';
import 'package:remas_land/features/search/domain/search_query_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  late AppDatabase db;
  late PrefsService prefs;
  late DatabaseSeeder seeder;

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    final sharedPrefs = await SharedPreferences.getInstance();
    prefs = PrefsService(sharedPrefs);
    db = AppDatabase.forTesting(NativeDatabase.memory());
    seeder = DatabaseSeeder(db: db, prefs: prefs);
  });

  tearDown(() async {
    await db.close();
  });

  test('DatabaseSeeder seeds once and is idempotent across repeated calls',
      () async {
    await seeder.seedIfNeeded();
    final firstCategories = await db.select(db.categories).get();
    final firstProducts = await db.select(db.products).get();
    final firstOrderItems = await db.select(db.orderItems).get();

    expect(firstCategories.length, 9);
    expect(firstProducts.length, 13);
    expect(firstOrderItems.length, 3);

    // Second invocation must not duplicate any rows.
    await seeder.seedIfNeeded();
    final secondCategories = await db.select(db.categories).get();
    final secondProducts = await db.select(db.products).get();
    final secondOrderItems = await db.select(db.orderItems).get();

    expect(secondCategories.length, firstCategories.length);
    expect(secondProducts.length, firstProducts.length);
    expect(secondOrderItems.length, firstOrderItems.length);
  });

  test('CatalogRepository and SearchRepository query and toggle favorites',
      () async {
    await seeder.seedIfNeeded();
    final catalogRepo = CatalogRepositoryImpl(db.catalogDao);
    final searchRepo = SearchRepositoryImpl(db.catalogDao);

    final cheeseProducts =
        await catalogRepo.watchProductsByCategory('cheese').first;
    expect(cheeseProducts, isNotEmpty);

    final addedFav = await catalogRepo.toggleFavorite('prod_domty_feta_500');
    expect(addedFav, isTrue);
    final favIds = await catalogRepo.watchFavoriteIds().first;
    expect(favIds.contains('prod_domty_feta_500'), isTrue);

    final removedFav = await catalogRepo.toggleFavorite('prod_domty_feta_500');
    expect(removedFav, isFalse);

    final milkResults = await searchRepo.searchProducts(
      const SearchQueryEntity(keyword: 'Buffalo Milk'),
    );
    expect(milkResults.length, 2);

    final saleResults = await searchRepo.searchProducts(
      const SearchQueryEntity(onSaleOnly: true),
    );
    expect(saleResults.every((p) => p.isOnSale), isTrue);
  });
}
