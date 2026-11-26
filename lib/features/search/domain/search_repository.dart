import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/search/domain/search_query_entity.dart';

/// Abstract repository contract for product search and suggestions.
abstract interface class SearchRepository {
  List<String> getPopularSearchTags();
  Future<List<ProductEntity>> searchProducts(SearchQueryEntity query);
}
