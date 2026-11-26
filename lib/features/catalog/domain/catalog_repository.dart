import 'package:remas_land/features/catalog/domain/category_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

enum CatalogFilter { all, popular, newArrivals, onSale }

enum CatalogSort { recommended, priceLowToHigh, priceHighToLow, topRated }

/// Abstract repository contract for catalog browsing and favorites.
abstract interface class CatalogRepository {
  Stream<List<CategoryEntity>> watchCategories();
  Future<CategoryEntity?> getCategoryById(String id);
  Stream<List<ProductEntity>> watchProductsByCategory(String categoryId);
  Stream<List<ProductEntity>> watchProductsByBrand(String brandId);
  Future<ProductEntity?> getProductById(String id);
  Stream<Set<String>> watchFavoriteIds();
  Stream<List<ProductEntity>> watchFavoriteProducts();
  Future<bool> toggleFavorite(String productId);
}
