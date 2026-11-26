import 'package:remas_land/core/database/app_database.dart' as db;
import 'package:remas_land/features/catalog/domain/brand_entity.dart';
import 'package:remas_land/features/catalog/domain/category_entity.dart';
import 'package:remas_land/features/catalog/domain/product_entity.dart';

/// Maps Drift catalog rows to pure domain entities.
abstract final class CatalogMapper {
  static CategoryEntity categoryToEntity(db.Category row) {
    return CategoryEntity(
      id: row.id,
      name: row.name,
      subtitle: row.subtitle,
      imageAsset: row.imageAsset,
      bannerTitle: row.bannerTitle,
      bannerSubtitle: row.bannerSubtitle,
      bannerBadge: row.bannerBadge,
      bannerDiscountText: row.bannerDiscountText,
      sortOrder: row.sortOrder,
      isExploreFeatured: row.isExploreFeatured,
      isTrending: row.isTrending,
    );
  }

  static BrandEntity brandToEntity(db.Brand row) {
    return BrandEntity(
      id: row.id,
      name: row.name,
      subtitle: row.subtitle,
      bgColorHex: row.bgColorHex,
      textColorHex: row.textColorHex,
      sortOrder: row.sortOrder,
    );
  }

  static ProductEntity productToEntity(db.Product row) {
    return ProductEntity(
      id: row.id,
      name: row.name,
      subtitle: row.subtitle,
      description: row.description,
      categoryId: row.categoryId,
      brandId: row.brandId,
      farmLabel: row.farmLabel,
      unitLabel: row.unitLabel,
      pricePiasters: row.pricePiasters,
      originalPricePiasters: row.originalPricePiasters,
      badgeText: row.badgeText,
      badgeTone: row.badgeTone,
      imageAsset: row.imageAsset,
      rating: row.rating,
      reviewCount: row.reviewCount,
      stockCount: row.stockCount,
      isSpotlight: row.isSpotlight,
      isSpecialOffer: row.isSpecialOffer,
      isNewArrival: row.isNewArrival,
      isPopular: row.isPopular,
      isPairingSuggestion: row.isPairingSuggestion,
    );
  }
}
