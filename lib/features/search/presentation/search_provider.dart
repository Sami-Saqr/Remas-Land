import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:remas_land/core/database/database_provider.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/search/data/search_repository_impl.dart';
import 'package:remas_land/features/search/domain/search_query_entity.dart';
import 'package:remas_land/features/search/domain/search_repository.dart';

/// Override-friendly provider for [SearchRepository].
final searchRepositoryProvider = Provider<SearchRepository>((ref) {
  return SearchRepositoryImpl(ref.watch(catalogDaoProvider));
});

final searchResultsProvider =
    FutureProvider.family<List<ProductEntity>, SearchQueryEntity>(
  (ref, query) => ref.watch(searchRepositoryProvider).searchProducts(query),
);
