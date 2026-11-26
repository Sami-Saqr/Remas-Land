import 'package:remas_land/core/database/daos/catalog_dao.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/features/catalog/data/catalog_mapper.dart';
import 'package:remas_land/features/catalog/domain/catalog_repository.dart';
import 'package:remas_land/features/catalog/domain/category_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

/// Drift-backed implementation of [CatalogRepository].
class CatalogRepositoryImpl implements CatalogRepository {
  const CatalogRepositoryImpl(this._dao);

  final CatalogDao _dao;

  @override
  Stream<List<CategoryEntity>> watchCategories() {
    return _dao.watchCategories().map(
          (rows) => rows.map(CatalogMapper.categoryToEntity).toList(),
        );
  }

  @override
  Future<CategoryEntity?> getCategoryById(String id) {
    return guardDatabaseCall(() async {
      final row = await _dao.getCategoryById(id);
      return row == null ? null : CatalogMapper.categoryToEntity(row);
    });
  }

  @override
  Stream<List<ProductEntity>> watchProductsByCategory(String categoryId) {
    return _dao.watchProductsByCategory(categoryId).map(
          (rows) => rows.map(CatalogMapper.productToEntity).toList(),
        );
  }

  @override
  Stream<List<ProductEntity>> watchProductsByBrand(String brandId) {
    return _dao.watchProductsByBrand(brandId).map(
          (rows) => rows.map(CatalogMapper.productToEntity).toList(),
        );
  }

  @override
  Future<ProductEntity?> getProductById(String id) {
    return guardDatabaseCall(() async {
      final row = await _dao.getProductById(id);
      return row == null ? null : CatalogMapper.productToEntity(row);
    });
  }

  @override
  Stream<Set<String>> watchFavoriteIds() => _dao.watchFavoriteIds();

  @override
  Stream<List<ProductEntity>> watchFavoriteProducts() {
    return _dao.watchFavoriteProducts().map(
          (rows) => rows.map(CatalogMapper.productToEntity).toList(),
        );
  }

  @override
  Future<bool> toggleFavorite(String productId) {
    return guardDatabaseCall(() => _dao.toggleFavorite(productId));
  }
}
