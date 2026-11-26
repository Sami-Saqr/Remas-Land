import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_entity.freezed.dart';

/// Pure domain entity representing a product category / aisle.
@freezed
abstract class CategoryEntity with _$CategoryEntity {
  const factory CategoryEntity({
    required String id,
    required String name,
    required String subtitle,
    required String imageAsset,
    required String bannerTitle,
    required String bannerSubtitle,
    required String bannerBadge,
    required String bannerDiscountText,
    required int sortOrder,
    required bool isExploreFeatured,
    required bool isTrending,
  }) = _CategoryEntity;
}
