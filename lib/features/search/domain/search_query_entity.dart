import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_query_entity.freezed.dart';

/// Filter & query state for Search & Discover.
@freezed
abstract class SearchQueryEntity with _$SearchQueryEntity {
  const factory SearchQueryEntity({
    @Default('') String keyword,
    @Default(false) bool onSaleOnly,
    String? categoryId,
  }) = _SearchQueryEntity;
}
