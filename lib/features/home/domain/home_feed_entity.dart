import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:remas_land/features/catalog/domain/brand_entity.dart';
import 'package:remas_land/features/catalog/domain/category_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';
import 'package:remas_land/features/home/domain/banner_entity.dart';

part 'home_feed_entity.freezed.dart';

/// Aggregated storefront feed rendered on the Home screen.
@freezed
abstract class HomeFeedEntity with _$HomeFeedEntity {
  const factory HomeFeedEntity({
    required List<BannerEntity> heroBanners,
    required List<BannerEntity> dealBanners,
    required List<CategoryEntity> exploreCategories,
    required List<CategoryEntity> allCategories,
    required List<ProductEntity> spotlightProducts,
    required List<ProductEntity> specialOffers,
    required List<BrandEntity> brands,
  }) = _HomeFeedEntity;
}
