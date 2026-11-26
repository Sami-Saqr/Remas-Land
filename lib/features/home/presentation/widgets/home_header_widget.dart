// Home sticky header — Figma node-id=1:283 "Header".
// Two-row header: #173146 top delivery bar + white Remas Land Arabic logo strip.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/features/account/presentation/account_provider.dart';

/// Sticky two-row header rendered as a [SliverPersistentHeader] delegate.
class HomeHeaderDelegate extends SliverPersistentHeaderDelegate {
  const HomeHeaderDelegate({required this.topPadding});

  final double topPadding;

  static const double _topRowHeight = 58;
  static const double _logoRowHeight = 68;
  static const double _contentHeight = _topRowHeight + _logoRowHeight;

  @override
  double get minExtent => topPadding + _contentHeight;

  @override
  double get maxExtent => topPadding + _contentHeight;

  @override
  bool shouldRebuild(HomeHeaderDelegate oldDelegate) =>
      oldDelegate.topPadding != topPadding;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return _HomeHeaderWidget(topPadding: topPadding);
  }
}

class _HomeHeaderWidget extends ConsumerWidget {
  const _HomeHeaderWidget({required this.topPadding});

  final double topPadding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressAsync = ref.watch(defaultAddressProvider);

    final String areaName = addressAsync.when(
      data: (address) => address?.area ?? 'Zamalek',
      loading: () => '—',
      error: (_, _) => 'Zamalek',
    );

    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        boxShadow: AppShadows.shadowHeader,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Top navy bar (#173146)
          Container(
            height: topPadding + HomeHeaderDelegate._topRowHeight,
            color: AppColors.navNavy,
            padding: EdgeInsets.only(
              top: topPadding,
              left: AppSpacing.lg,
              right: AppSpacing.lg,
            ),
            child: Row(
              children: [
                Expanded(child: _LocationPill(area: areaName)),
                const SizedBox(width: AppSpacing.xs),
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Center(
                    child: SvgPicture.asset(
                      AppAssets.headerBellWhite,
                      width: 15,
                      height: 18,
                    ),
                  ),
                ),
                const SizedBox(width: AppSpacing.xs),
                GestureDetector(
                  onTap: () => context.go(AppConstants.routeMore),
                  child: const CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage(AppAssets.userAvatar),
                  ),
                ),
              ],
            ),
          ),
          // White logo strip with enlarged Remas Land Arabic calligraphy
          ClipRect(
            child: Container(
              height: HomeHeaderDelegate._logoRowHeight,
              width: double.infinity,
              color: AppColors.surface,
              alignment: Alignment.center,
              child: Transform.scale(
                scale: 1.95,
                child: Image.asset(
                  AppAssets.remasLogoAr,
                  height: 58,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _LocationPill extends StatelessWidget {
  const _LocationPill({required this.area});

  final String area;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppAssets.headerNavArrow, width: 11, height: 11),
        const SizedBox(width: 5),
        Text(
          AppStrings.deliverToLabel,
          style: AppTypography.overline.copyWith(
            color: AppColors.onPrimary,
            fontSize: 10,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(width: AppSpacing.sm),
        Flexible(
          child: Text(
            area,
            style: AppTypography.bodySemiBold.copyWith(
              color: AppColors.onPrimary,
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(width: 5),
        SvgPicture.asset(AppAssets.headerChevronWhite, width: 9, height: 6),
      ],
    );
  }
}
