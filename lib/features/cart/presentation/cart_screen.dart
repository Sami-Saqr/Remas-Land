import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_constants.dart';
import 'package:remas_land/core/constants/app_strings.dart';
import 'package:remas_land/core/widgets/widgets.dart';
import 'package:remas_land/features/cart/domain/cart_item_entity.dart';
import 'package:remas_land/features/cart/presentation/cart_provider.dart';

/// Temporary lightweight Cart screen wired to local SQLite cart state.
class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(cartSummaryProvider);
    final cartRepo = ref.read(cartRepositoryProvider);

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.navNavy,
        foregroundColor: AppColors.onPrimary,
        title: const Text(AppStrings.myCartTitle),
      ),
      body: summaryAsync.when(
        loading: () => const AppLoadingView(),
        error: (_, _) => AppErrorView(
          onRetry: () => ref.invalidate(cartSummaryProvider),
        ),
        data: (summary) {
          if (summary.items.isEmpty) {
            return AppEmptyView(
              title: AppStrings.emptyCartTitle,
              message: AppStrings.emptyCartMessage,
              actionLabel: AppStrings.exploreProductsCta,
              onAction: () => context.go(AppConstants.routeHome),
            );
          }

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  itemCount: summary.items.length,
                  separatorBuilder: (_, _) =>
                      const SizedBox(height: AppSpacing.md),
                  itemBuilder: (context, index) {
                    final item = summary.items[index];
                    return _CartItemTile(
                      item: item,
                      onIncrement: () =>
                          cartRepo.addOrIncrement(item.product.id),
                      onDecrement: () => cartRepo.setQuantity(
                        item.product.id,
                        item.quantity - 1,
                      ),
                      onRemove: () => cartRepo.removeItem(item.product.id),
                    );
                  },
                ),
              ),
              _CartSummaryFooter(summary: summary),
            ],
          );
        },
      ),
    );
  }
}

class _CartItemTile extends StatelessWidget {
  const _CartItemTile({
    required this.item,
    required this.onIncrement,
    required this.onDecrement,
    required this.onRemove,
  });

  final CartItemEntity item;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: AppRadii.radiusMd,
            child: Container(
              width: 64,
              height: 64,
              color: AppColors.surfaceTint,
              child: Image.asset(
                item.product.imageAsset,
                fit: BoxFit.cover,
                errorBuilder: (_, _, _) => const Icon(
                  Icons.shopping_bag_outlined,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          const SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.product.name,
                  style: AppTypography.bodySemiBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: AppSpacing.xs),
                AppPriceText(
                  pricePiasters: item.lineTotalPiasters,
                  fontSize: 14,
                ),
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.sm),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(
                onPressed: onRemove,
                icon: const Icon(Icons.delete_outline, size: 18),
                color: AppColors.inkMuted,
                visualDensity: VisualDensity.compact,
              ),
              AppQuantityStepper(
                quantity: item.quantity,
                onDecrement: onDecrement,
                onIncrement: onIncrement,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CartSummaryFooter extends StatelessWidget {
  const _CartSummaryFooter({required this.summary});

  final CartSummaryEntity summary;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        AppSpacing.md,
        AppSpacing.lg,
        112,
      ),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        boxShadow: AppShadows.shadowNav,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total (${summary.totalUnits} items)',
                style: AppTypography.bodySemiBold,
              ),
              AppPriceText(
                pricePiasters: summary.totalPiasters,
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.md),
          AppPrimaryButton(
            label: AppStrings.goToCheckout,
            onPressed: () => context.push(AppConstants.routeCheckout),
          ),
        ],
      ),
    );
  }
}
