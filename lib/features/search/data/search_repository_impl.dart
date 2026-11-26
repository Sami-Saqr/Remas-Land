import 'package:remas_land/core/database/daos/catalog_dao.dart';
import 'package:remas_land/core/errors/failures.dart';
import 'package:remas_land/features/catalog/data/catalog_mapper.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/search/domain/search_query_entity.dart';
import 'package:remas_land/features/search/domain/search_repository.dart';

/// Drift-backed implementation of [SearchRepository].
class SearchRepositoryImpl implements SearchRepository {
  const SearchRepositoryImpl(this._catalogDao);

  final CatalogDao _catalogDao;

  static const List<String> _popularTags = [
    'Fresh Cheese',
    'Milk',
    'Qashtouta',
    'Yogurt',
    'Butter',
    'Cream',
    'Baladi Ghee',
    'Mish',
  ];

  @override
  List<String> getPopularSearchTags() => _popularTags;

  @override
  Future<List<ProductEntity>> searchProducts(SearchQueryEntity query) {
    return guardDatabaseCall(() async {
      final rows = await _catalogDao.searchProducts(
        query: query.keyword,
        onSaleOnly: query.onSaleOnly,
        categoryId: query.categoryId,
      );
      return rows.map(CatalogMapper.productToEntity).toList();
    });
  }
}
