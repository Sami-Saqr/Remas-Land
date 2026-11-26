import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';

/// Continuously auto-scrolling cover carousel where the center card is larger
/// and adjacent cards have a soft blur effect matching Cover Image.png.
class HomeCoverCarousel extends StatefulWidget {
  const HomeCoverCarousel({
    required this.onBannerTap,
    super.key,
  });

  final VoidCallback onBannerTap;

  @override
  State<HomeCoverCarousel> createState() => _HomeCoverCarouselState();
}

class _HomeCoverCarouselState extends State<HomeCoverCarousel> {
  static const List<String> _covers = [
    AppAssets.coverRemas1,
    AppAssets.coverRemas2,
    AppAssets.coverRemas3,
  ];
  static const int _initialPage = 1000;

  late final PageController _controller;
  Timer? _timer;
  double _currentPage = _initialPage.toDouble();

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: _initialPage,
      viewportFraction: 0.66,
    )..addListener(_onScroll);

    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (!mounted || !_controller.hasClients) return;
      final next = (_controller.page?.round() ?? _initialPage) + 1;
      _controller.animateToPage(
        next,
        duration: const Duration(milliseconds: 650),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  void _onScroll() {
    if (!mounted || !_controller.hasClients) return;
    setState(() {
      _currentPage = _controller.page ?? _initialPage.toDouble();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: PageView.builder(
        controller: _controller,
        itemBuilder: (context, index) {
          final distance = (_currentPage - index).abs().clamp(0.0, 1.0);
          final scale = 1.0 - (distance * 0.16);
          final blurSigma = distance * 4.5;
          final opacity = 1.0 - (distance * 0.25);
          final asset = _covers[index % _covers.length];

          return Center(
            child: Transform.scale(
              scale: scale,
              child: Opacity(
                opacity: opacity,
                child: GestureDetector(
                  onTap: widget.onBannerTap,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      borderRadius: AppRadii.radiusLg,
                      boxShadow: distance < 0.3
                          ? const [
                              BoxShadow(
                                color: Color(0x332563EB),
                                blurRadius: 16,
                                offset: Offset(0, 4),
                              ),
                            ]
                          : AppShadows.shadowXs,
                    ),
                    child: ClipRRect(
                      borderRadius: AppRadii.radiusLg,
                      child: ImageFiltered(
                        imageFilter: ImageFilter.blur(
                          sigmaX: blurSigma,
                          sigmaY: blurSigma,
                        ),
                        child: Image.asset(
                          asset,
                          width: double.infinity,
                          height: 146,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
