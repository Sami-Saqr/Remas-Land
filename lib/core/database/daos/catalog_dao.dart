import 'package:drift/drift.dart';

import 'package:remas_land/core/database/app_database.dart';
import 'package:remas_land/core/database/tables/tables.dart';

part 'catalog_dao.g.dart';

/// Data access object for categories, brands, products, banners, and favorites.
@DriftAccessor(tables: [Categories, Brands, Products, Banners, Favorites])
class CatalogDao extends DatabaseAccessor<AppDatabase> with _$CatalogDaoMixin {
  CatalogDao(super.db);

  Stream<List<Category>> watchCategories() {
    return (select(categories)
          ..orderBy([(t) => OrderingTerm.asc(t.sortOrder)]))
        .watch();
  }

  Future<Category?> getCategoryById(String id) {
    return (select(categories)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Stream<List<Brand>> watchBrands() {
    return (select(brands)..orderBy([(t) => OrderingTerm.asc(t.sortOrder)]))
        .watch();
  }

  Stream<List<Banner>> watchBanners() {
    return (select(banners)..orderBy([(t) => OrderingTerm.asc(t.sortOrder)]))
        .watch();
  }

  Stream<List<Product>> watchAllProducts() => select(products).watch();

  Future<Product?> getProductById(String id) {
    return (select(products)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Stream<List<Product>> watchProductsByCategory(String categoryId) {
    if (categoryId == 'all') {
      return select(products).watch();
    }
    return (select(products)..where((t) => t.categoryId.equals(categoryId)))
        .watch();
  }

  Stream<List<Product>> watchProductsByBrand(String brandId) {
    return (select(products)..where((t) => t.brandId.equals(brandId))).watch();
  }

  Stream<List<Product>> watchSpotlightProducts() {
    return (select(products)..where((t) => t.isSpotlight.equals(true))).watch();
  }

  Stream<List<Product>> watchSpecialOffers() {
    return (select(products)..where((t) => t.isSpecialOffer.equals(true)))
        .watch();
  }

  Stream<List<Product>> watchPairingSuggestions() {
    return (select(products)
          ..where((t) => t.isPairingSuggestion.equals(true)))
        .watch();
  }

  Future<List<Product>> searchProducts({
    required String query,
    bool onSaleOnly = false,
    String? categoryId,
  }) {
    final trimmed = query.trim().toLowerCase();
    final stmt = select(products);

    stmt.where((t) {
      Expression<bool> condition = const Constant(true);
      if (categoryId != null && categoryId != 'all') {
        condition = condition & t.categoryId.equals(categoryId);
      }
      if (onSaleOnly) {
        condition = condition & t.originalPricePiasters.isNotNull();
      }
      if (trimmed.isNotEmpty) {
        final pattern = '%$trimmed%';
        condition = condition &
            (t.name.lower().like(pattern) |
                t.subtitle.lower().like(pattern) |
                t.farmLabel.lower().like(pattern));
      }
      return condition;
    });

    return stmt.get();
  }

  Stream<Set<String>> watchFavoriteIds() {
    return select(favorites)
        .watch()
        .map((rows) => rows.map((row) => row.productId).toSet());
  }

  Stream<List<Product>> watchFavoriteProducts() {
    final query = select(products).join([
      innerJoin(favorites, favorites.productId.equalsExp(products.id)),
    ]);
    return query.watch().map(
          (rows) => rows.map((row) => row.readTable(products)).toList(),
        );
  }

  Future<bool> toggleFavorite(String productId) async {
    final existing = await (select(favorites)
          ..where((t) => t.productId.equals(productId)))
        .getSingleOrNull();
    if (existing != null) {
      await (delete(favorites)..where((t) => t.productId.equals(productId)))
          .go();
      return false;
    }
    await into(favorites).insert(
      FavoritesCompanion.insert(productId: productId),
    );
    return true;
  }
}
