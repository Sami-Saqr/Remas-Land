import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/features/catalog/data/catalog_repository_impl.dart';
import 'package:remas_land/features/catalog/domain/catalog_repository.dart';
import 'package:remas_land/features/catalog/domain/category_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

/// Override-friendly provider for [CatalogRepository].
final catalogRepositoryProvider = Provider<CatalogRepository>((ref) {
  return CatalogRepositoryImpl(ref.watch(catalogDaoProvider));
});

final categoriesProvider = StreamProvider<List<CategoryEntity>>((ref) {
  return ref.watch(catalogRepositoryProvider).watchCategories();
});

final categoryProductsProvider =
    StreamProvider.family<List<ProductEntity>, String>((ref, categoryId) {
  return ref
      .watch(catalogRepositoryProvider)
      .watchProductsByCategory(categoryId);
});

final favoriteIdsProvider = StreamProvider<Set<String>>((ref) {
  return ref.watch(catalogRepositoryProvider).watchFavoriteIds();
});

final favoriteProductsProvider = StreamProvider<List<ProductEntity>>((ref) {
  return ref.watch(catalogRepositoryProvider).watchFavoriteProducts();
});
