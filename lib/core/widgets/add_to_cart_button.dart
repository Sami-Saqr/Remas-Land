// Small circular "add to cart" (+) button shared by Spotlight and Special Offers cards.

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:remas_land/app/theme/app_theme.dart';

/// Round blue `+` button used on product cards to add an item to the cart.
class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    required this.onTap,
    this.size = AppSpacing.iconCircleMd,
    this.feedbackLabel,
    super.key,
  });

  final VoidCallback onTap;
  final double size;
  final String? feedbackLabel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
        if (feedbackLabel != null) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(feedbackLabel!),
                duration: const Duration(milliseconds: 1200),
                behavior: SnackBarBehavior.floating,
              ),
            );
        }
      },
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
          boxShadow: AppShadows.shadowXs,
        ),
        child: Center(
          child: SvgPicture.asset(
            'assets/icons/12237.svg',
            width: 16,
            height: 16,
            colorFilter: const ColorFilter.mode(
              AppColors.onPrimary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
