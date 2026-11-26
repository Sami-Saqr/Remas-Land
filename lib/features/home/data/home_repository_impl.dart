import 'dart:async';

import 'package:remas_land/core/database/app_database.dart' as db;
import 'package:remas_land/core/database/daos/catalog_dao.dart';
import 'package:remas_land/features/catalog/data/catalog_mapper.dart';
import 'package:remas_land/features/home/domain/banner_entity.dart';
import 'package:remas_land/features/home/domain/home_feed_entity.dart';
import 'package:remas_land/features/home/domain/home_repository.dart';

/// Drift-backed implementation of [HomeRepository].
class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl(this._catalogDao);

  final CatalogDao _catalogDao;

  @override
  Stream<HomeFeedEntity> watchHomeFeed() {
    return Stream<HomeFeedEntity>.multi((controller) {
      List<db.Category>? categories;
      List<db.Brand>? brands;
      List<db.Banner>? banners;
      List<db.Product>? products;

      void emitIfReady() {
        if (categories == null ||
            brands == null ||
            banners == null ||
            products == null) {
          return;
        }
        final categoryEntities =
            categories!.map(CatalogMapper.categoryToEntity).toList();
        final bannerEntities = banners!.map(_bannerToEntity).toList();
        final productEntities =
            products!.map(CatalogMapper.productToEntity).toList();
        final brandEntities =
            brands!.map(CatalogMapper.brandToEntity).toList();

        controller.add(
          HomeFeedEntity(
            heroBanners:
                bannerEntities.where((b) => b.bannerType == 'hero').toList(),
            dealBanners:
                bannerEntities.where((b) => b.bannerType == 'deal').toList(),
            exploreCategories:
                categoryEntities.where((c) => c.isExploreFeatured).toList(),
            allCategories: categoryEntities,
            spotlightProducts:
                productEntities.where((p) => p.isSpotlight).toList(),
            specialOffers:
                productEntities.where((p) => p.isSpecialOffer).toList(),
            brands: brandEntities,
          ),
        );
      }

      final subs = [
        _catalogDao.watchCategories().listen(
          (data) {
            categories = data;
            emitIfReady();
          },
          onError: controller.addError,
        ),
        _catalogDao.watchBrands().listen(
          (data) {
            brands = data;
            emitIfReady();
          },
          onError: controller.addError,
        ),
        _catalogDao.watchBanners().listen(
          (data) {
            banners = data;
            emitIfReady();
          },
          onError: controller.addError,
        ),
        _catalogDao.watchAllProducts().listen(
          (data) {
            products = data;
            emitIfReady();
          },
          onError: controller.addError,
        ),
      ];

      controller.onCancel = () => Future.wait(
            subs.map((sub) => sub.cancel()),
          );
    });
  }

  static BannerEntity _bannerToEntity(db.Banner row) {
    return BannerEntity(
      id: row.id,
      badgeText: row.badgeText,
      title: row.title,
      subtitle: row.subtitle,
      ctaLabel: row.ctaLabel,
      targetCategoryId: row.targetCategoryId,
      imageAsset: row.imageAsset,
      gradientStartHex: row.gradientStartHex,
      gradientEndHex: row.gradientEndHex,
      ctaTextColorHex: row.ctaTextColorHex,
      bannerType: row.bannerType,
      sortOrder: row.sortOrder,
    );
  }
}
