import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_entity.freezed.dart';

/// Pure domain entity representing a Home promo banner or curated deal card.
@freezed
abstract class BannerEntity with _$BannerEntity {
  const factory BannerEntity({
    required String id,
    required String badgeText,
    required String title,
    String? subtitle,
    required String ctaLabel,
    required String targetCategoryId,
    required String imageAsset,
    required int gradientStartHex,
    required int gradientEndHex,
    required int ctaTextColorHex,
    required String bannerType,
    required int sortOrder,
  }) = _BannerEntity;
}
