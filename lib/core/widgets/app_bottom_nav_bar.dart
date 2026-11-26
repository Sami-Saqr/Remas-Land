import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';
import 'package:remas_land/core/constants/app_strings.dart';

/// Curved bottom navigation bar inspired by CurvedNavigationBar:
/// the concave notch and floating circle smoothly animate to whichever tab is active.
class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    this.cartItemCount = 0,
    super.key,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;
  final int cartItemCount;

  static const double _barHeight = 72;
  static const double _fabSize = 56;
  static const double _fabTopOffset = 28;
  static const double _horizontalPadding = AppSpacing.md;

  static const List<_NavTabConfig> _tabs = [
    _NavTabConfig(
      branchIndex: 0,
      label: AppStrings.navHome,
      iconAsset: AppAssets.navHomeLine,
    ),
    _NavTabConfig(
      branchIndex: 1,
      label: AppStrings.navSearch,
      iconAsset: AppAssets.navSearchLine,
    ),
    _NavTabConfig(
      branchIndex: 3,
      label: 'Shop',
      iconAsset: AppAssets.navShop,
    ),
    _NavTabConfig(
      branchIndex: 2,
      label: AppStrings.navCart,
      iconAsset: AppAssets.navCartLine,
      isCart: true,
    ),
    _NavTabConfig(
      branchIndex: 4,
      label: AppStrings.navProfile,
      iconAsset: AppAssets.navProfileBold,
    ),
  ];

  int _visualIndexForBranch(int branchIndex) {
    final idx = _tabs.indexWhere((t) => t.branchIndex == branchIndex);
    return idx >= 0 ? idx : 0;
  }

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.paddingOf(context).bottom;
    final totalHeight = _fabTopOffset + _barHeight + bottomPadding;
    final activeVisualIndex = _visualIndexForBranch(currentIndex);

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final contentWidth = width - (_horizontalPadding * 2);
        final slotWidth = contentWidth / _tabs.length;

        return TweenAnimationBuilder<double>(
          tween: Tween<double>(end: activeVisualIndex.toDouble()),
          duration: const Duration(milliseconds: 280),
          curve: Curves.easeOutCubic,
          builder: (context, animPos, _) {
            final notchCenterX =
                _horizontalPadding + slotWidth * (animPos + 0.5);
            final activeTab = _tabs[activeVisualIndex];

            return SizedBox(
              height: totalHeight,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  // Curved #173146 background bar
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    height: _barHeight + bottomPadding,
                    child: CustomPaint(
                      painter: _CurvedNavBarPainter(
                        color: AppColors.navNavy,
                        notchCenterX: notchCenterX,
                      ),
                    ),
                  ),

                  // 5 tab slots
                  Positioned(
                    left: _horizontalPadding,
                    right: _horizontalPadding,
                    bottom: bottomPadding,
                    height: _barHeight,
                    child: Row(
                      children: List.generate(_tabs.length, (i) {
                        final tab = _tabs[i];
                        final isSelected = i == activeVisualIndex;
                        return Expanded(
                          child: _NavTabItem(
                            label: tab.label,
                            iconAsset: tab.iconAsset,
                            isSelected: isSelected,
                            badgeCount: tab.isCart ? cartItemCount : 0,
                            onTap: () => onTap(tab.branchIndex),
                          ),
                        );
                      }),
                    ),
                  ),

                  // Floating active circle ("الكورة") positioned over active tab
                  Positioned(
                    left: notchCenterX - (_fabSize / 2),
                    top: 0,
                    child: GestureDetector(
                      onTap: () => onTap(activeTab.branchIndex),
                      child: Container(
                        width: _fabSize,
                        height: _fabSize,
                        decoration: const BoxDecoration(
                          color: AppColors.navNavy,
                          shape: BoxShape.circle,
                          boxShadow: AppShadows.shadowNav,
                        ),
                        alignment: Alignment.center,
                        child: _IconWithBadge(
                          iconAsset: activeTab.iconAsset,
                          color: AppColors.navTeal,
                          badgeCount:
                              activeTab.isCart ? cartItemCount : 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class _NavTabConfig {
  const _NavTabConfig({
    required this.branchIndex,
    required this.label,
    required this.iconAsset,
    this.isCart = false,
  });

  final int branchIndex;
  final String label;
  final String iconAsset;
  final bool isCart;
}

class _CurvedNavBarPainter extends CustomPainter {
  const _CurvedNavBarPainter({
    required this.color,
    required this.notchCenterX,
  });

  final Color color;
  final double notchCenterX;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    const notchHalfWidth = 44.0;
    const notchDepth = 34.0;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(notchCenterX - notchHalfWidth, 0)
      ..cubicTo(
        notchCenterX - notchHalfWidth * 0.55,
        0,
        notchCenterX - notchHalfWidth * 0.52,
        notchDepth,
        notchCenterX,
        notchDepth,
      )
      ..cubicTo(
        notchCenterX + notchHalfWidth * 0.52,
        notchDepth,
        notchCenterX + notchHalfWidth * 0.55,
        0,
        notchCenterX + notchHalfWidth,
        0,
      )
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_CurvedNavBarPainter oldDelegate) =>
      oldDelegate.color != color ||
      oldDelegate.notchCenterX != notchCenterX;
}

class _NavTabItem extends StatelessWidget {
  const _NavTabItem({
    required this.label,
    required this.iconAsset,
    required this.isSelected,
    required this.onTap,
    this.badgeCount = 0,
  });

  final String label;
  final String iconAsset;
  final bool isSelected;
  final int badgeCount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final labelColor =
        isSelected ? AppColors.navTeal : AppColors.onPrimary;

    return InkWell(
      onTap: onTap,
      borderRadius: AppRadii.radiusMd,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (!isSelected)
              _IconWithBadge(
                iconAsset: iconAsset,
                color: AppColors.onPrimary,
                badgeCount: badgeCount,
              )
            else
              const SizedBox(height: 24),
            const SizedBox(height: 4),
            Text(
              label,
              style: AppTypography.overline.copyWith(
                color: labelColor,
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                letterSpacing: 0,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconWithBadge extends StatelessWidget {
  const _IconWithBadge({
    required this.iconAsset,
    required this.color,
    this.badgeCount = 0,
  });

  final String iconAsset;
  final Color color;
  final int badgeCount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          iconAsset,
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
        if (badgeCount > 0)
          Positioned(
            right: -8,
            top: -4,
            child: Container(
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: const BoxDecoration(
                color: AppColors.primaryBright,
                borderRadius: AppRadii.radiusPill,
              ),
              alignment: Alignment.center,
              child: Text(
                badgeCount > 99 ? '99+' : '$badgeCount',
                style: AppTypography.overline.copyWith(
                  color: AppColors.onPrimary,
                  height: 1.2,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
