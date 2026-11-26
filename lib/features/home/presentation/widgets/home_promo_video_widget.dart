import 'package:flutter/material.dart';
import 'package:remas_land/app/theme/app_theme.dart';
import 'package:remas_land/core/constants/app_assets.dart';
import 'package:video_player/video_player.dart';

/// Promo video player placed at the bottom of HomeScreen (Main.png).
/// Plays assets/video/اعلان-هيثم-شاكر.mp4 when initialized and falls back
/// gracefully to the poster image if platform video is unavailable (e.g. tests).
class HomePromoVideoSection extends StatefulWidget {
  const HomePromoVideoSection({super.key});

  @override
  State<HomePromoVideoSection> createState() => _HomePromoVideoSectionState();
}

class _HomePromoVideoSectionState extends State<HomePromoVideoSection> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initVideo();
  }

  Future<void> _initVideo() async {
    try {
      final controller = VideoPlayerController.asset(AppAssets.promoVideo);
      await controller.initialize();
      await controller.setLooping(true);
      if (!mounted) {
        await controller.dispose();
        return;
      }
      setState(() {
        _controller = controller;
        _isInitialized = true;
      });
    } catch (_) {
      // Headless widget tests or unsupported platforms fall back to poster.
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  void _togglePlay() {
    final c = _controller;
    if (c == null || !_isInitialized) return;
    setState(() {
      if (c.value.isPlaying) {
        c.pause();
      } else {
        c.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPlaying = _controller?.value.isPlaying ?? false;

    return Padding(
      padding: AppSpacing.screenHorizontal,
      child: GestureDetector(
        onTap: _togglePlay,
        child: ClipRRect(
          borderRadius: AppRadii.radiusLg,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Stack(
              alignment: Alignment.center,
              children: [
                if (_isInitialized && _controller != null)
                  SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SizedBox(
                        width: _controller!.value.size.width,
                        height: _controller!.value.size.height,
                        child: VideoPlayer(_controller!),
                      ),
                    ),
                  )
                else
                  Positioned.fill(
                    child: Image.asset(
                      AppAssets.videoPoster,
                      fit: BoxFit.cover,
                    ),
                  ),
                if (!isPlaying)
                  Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryBright,
                      shape: BoxShape.circle,
                      boxShadow: AppShadows.shadowPrimaryButton,
                    ),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: AppColors.onPrimary,
                      size: 34,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
