// Home screen matching screenshots/Home Page photos/Main.png & Cover Image.png.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/widgets/app_state_views.dart';
import 'package:remas_land/features/home/domain/home_feed_entity.dart';
import 'package:remas_land/features/home/presentation/home_provider.dart';
import 'package:remas_land/features/home/presentation/widgets/home_banner_carousel_widget.dart';
import 'package:remas_land/features/home/presentation/widgets/home_category_index_widget.dart';
import 'package:remas_land/features/home/presentation/widgets/home_cover_carousel_widget.dart';
import 'package:remas_land/features/home/presentation/widgets/home_header_widget.dart';
import 'package:remas_land/features/home/presentation/widgets/home_most_sold_widget.dart';
import 'package:remas_land/features/home/presentation/widgets/home_promo_video_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final feedAsync = ref.watch(homeFeedProvider);
    final topPadding = MediaQuery.paddingOf(context).top;

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      body: feedAsync.when(
        loading: () => _withHeader(
          topPadding: topPadding,
          child: const SliverFillRemaining(
            child: AppLoadingView(),
          ),
        ),
        error: (err, _) => _withHeader(
          topPadding: topPadding,
          child: SliverFillRemaining(
            child: AppErrorView(
              onRetry: () => ref.invalidate(homeFeedProvider),
            ),
          ),
        ),
        data: (feed) => _HomeFeedBody(feed: feed, topPadding: topPadding),
      ),
    );
  }

  Widget _withHeader({
    required double topPadding,
    required Widget child,
  }) {
    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: HomeHeaderDelegate(topPadding: topPadding),
        ),
        child,
      ],
    );
  }
}

class _HomeFeedBody extends StatelessWidget {
  const _HomeFeedBody({required this.feed, required this.topPadding});

  final HomeFeedEntity feed;
  final double topPadding;

  @override
  Widget build(BuildContext context) {
    void goCategory(String slug) =>
        context.push(AppConstants.categoryPath(slug));

    final mostSoldProducts = [
      ...feed.spotlightProducts,
      ...feed.specialOffers,
    ];

    return CustomScrollView(
      slivers: [
        // Sticky two-row header
        SliverPersistentHeader(
          pinned: true,
          delegate: HomeHeaderDelegate(topPadding: topPadding),
        ),

        // 1. Continuous blurred cover carousel
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppSpacing.md,
              bottom: AppSpacing.md,
            ),
            child: HomeCoverCarousel(
              onBannerTap: () => goCategory('all'),
            ),
          ),
        ),

        // 2. Arabic 3-column category grid ("الاقسام" + Limited Offers + "عرض المزيد")
        if (feed.allCategories.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.lg),
              child: HomeCategoryIndex(
                categories: feed.allCategories,
                onCategoryTap: (cat) => goCategory(cat.id),
                onViewAll: () => goCategory('all'),
                onOffersTap: () => goCategory('offers'),
              ),
            ),
          ),

        // 3. Z-mix & promotional banner carousel
        if (feed.heroBanners.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.lg),
              child: HomeBannerCarousel(
                banners: feed.heroBanners,
                onCtaTap: goCategory,
              ),
            ),
          ),

        // 4. Most Sold horizontal scrollable Remas products
        if (mostSoldProducts.isNotEmpty)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.lg),
              child: HomeMostSoldSection(
                products: mostSoldProducts,
                onProductTap: (p) =>
                    context.push(AppConstants.productPath(p.id)),
                onSeeAll: () => goCategory('all'),
              ),
            ),
          ),

        // 5. Bottom promo video player
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(bottom: AppSpacing.md),
            child: HomePromoVideoSection(),
          ),
        ),

        // Bottom safe area padding for curved bottom navbar
        const SliverToBoxAdapter(child: SizedBox(height: 100)),
      ],
    );
  }
}
