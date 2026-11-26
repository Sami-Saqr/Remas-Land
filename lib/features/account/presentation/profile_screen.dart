import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/widgets.dart';
import 'package:remas_land/features/account/presentation/account_provider.dart';

/// User profile screen accessed from the Home avatar or Profile bottom tab.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(userProfileProvider);
    final addressAsync = ref.watch(defaultAddressProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.navNavy,
        foregroundColor: AppColors.onPrimary,
        title: const Text(AppStrings.navProfile),
      ),
      body: profileAsync.when(
        loading: () => const AppLoadingView(),
        error: (_, _) => AppErrorView(
          onRetry: () => ref.invalidate(userProfileProvider),
        ),
        data: (profile) {
          final addressText =
              addressAsync.value?.shortDisplay ?? 'Zamalek, Cairo';

          return ListView(
            padding: const EdgeInsets.fromLTRB(
              AppSpacing.lg,
              AppSpacing.lg,
              AppSpacing.lg,
              116,
            ),
            children: [
              // User identity card
              AppCard(
                padding: AppSpacing.cardPaddingLg,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                        profile.avatarAsset.isNotEmpty
                            ? profile.avatarAsset
                            : AppAssets.userAvatar,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            profile.fullName,
                            style: AppTypography.sectionTitle,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            profile.phone,
                            style: AppTypography.caption,
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          AppBadge(
                            label:
                                '${profile.tierLabel} • ${profile.rewardsCount} pts',
                            tone: AppBadgeTone.softBlue,
                            pill: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Delivery address summary
              AppCard(
                onTap: () => context.push(AppConstants.routeAddresses),
                padding: AppSpacing.cardPaddingLg,
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: AppColors.primaryBright,
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppStrings.deliverToLabel,
                            style: AppTypography.overline,
                          ),
                          const SizedBox(height: 2),
                          Text(addressText, style: AppTypography.bodySemiBold),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right, color: AppColors.inkMuted),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.md),

              // Quick account links
              AppCard(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    _ProfileMenuRow(
                      icon: Icons.receipt_long_outlined,
                      title: 'My Orders',
                      onTap: () => context.push(AppConstants.routeOrders),
                    ),
                    const Divider(height: 1),
                    _ProfileMenuRow(
                      icon: Icons.card_giftcard_outlined,
                      title: 'Rewards',
                      onTap: () => context.push(AppConstants.routeRewards),
                    ),
                    const Divider(height: 1),
                    _ProfileMenuRow(
                      icon: Icons.favorite_border,
                      title: 'Favorites & Saved Lists',
                      onTap: () => context.push(AppConstants.routeFavorites),
                    ),
                    const Divider(height: 1),
                    _ProfileMenuRow(
                      icon: Icons.local_offer_outlined,
                      title: 'Promo Codes & Vouchers',
                      onTap: () => context.push(AppConstants.routePromos),
                    ),
                    const Divider(height: 1),
                    _ProfileMenuRow(
                      icon: Icons.settings_outlined,
                      title: 'Settings & Preferences',
                      onTap: () => context.push(AppConstants.routeSettings),
                    ),
                    const Divider(height: 1),
                    _ProfileMenuRow(
                      icon: Icons.help_outline,
                      title: 'Help & FAQs',
                      onTap: () => context.push(AppConstants.routeHelp),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _ProfileMenuRow extends StatelessWidget {
  const _ProfileMenuRow({
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.navNavy),
      title: Text(title, style: AppTypography.bodyMedium),
      trailing: const Icon(Icons.chevron_right, color: AppColors.inkMuted),
      onTap: onTap,
    );
  }
}
