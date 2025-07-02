import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/utils/screen_size.dart';

import '../../../../core/config/web_asset_path.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider>
    with TickerProviderStateMixin {
  final List<String> _images = [
    WebAssetPath.mishad,
    WebAssetPath.learnathon,
    WebAssetPath.educlub,
  ];

  int _currentIndex = 0;
  late Timer _timer;
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_fadeController);

    _startSlider();
  }

  void _startSlider() {
    _fadeController.forward();

    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      _fadeController.reverse().then((_) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % _images.length;
        });
        _fadeController.forward();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: ScreenSize.scaleWidth(context, 450),
        height: ScreenSize.scaleHeight(context, 300),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_images[_currentIndex]),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
