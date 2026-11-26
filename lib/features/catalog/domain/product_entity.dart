import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';

/// Pure domain entity representing a store item (prices in integer piasters).
@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required String id,
    required String name,
    required String subtitle,
    required String description,
    required String categoryId,
    required String brandId,
    required String farmLabel,
    required String unitLabel,
    required int pricePiasters,
    int? originalPricePiasters,
    String? badgeText,
    @Default('primary') String badgeTone,
    required String imageAsset,
    required double rating,
    required int reviewCount,
    required int stockCount,
    required bool isSpotlight,
    required bool isSpecialOffer,
    required bool isNewArrival,
    required bool isPopular,
    required bool isPairingSuggestion,
  }) = _ProductEntity;

  const ProductEntity._();

  int get savingsPiasters => originalPricePiasters != null &&
          originalPricePiasters! > pricePiasters
      ? originalPricePiasters! - pricePiasters
      : 0;

  bool get isOnSale => savingsPiasters > 0;
}
