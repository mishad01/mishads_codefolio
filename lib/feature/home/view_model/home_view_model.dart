// home_view_model.dart
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeViewModel with ChangeNotifier {
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late Animation<Offset> slideAnimation;
  late Animation<double> aboutFadeAnimation;
  late Animation<Offset> aboutSlideAnimation;

  bool initialized = false;
  Timer? startTimer;

  void init(TickerProvider vsync) {
    controller =
        AnimationController(
          vsync: vsync,
          duration: const Duration(milliseconds: 1200),
        )..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            initialized = true;
            notifyListeners();
          }
        });

    fadeAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.0, 0.6, curve: Curves.easeInOutQuint),
    );

    slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.04), end: Offset.zero).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.2, 1.0, curve: Curves.easeOutQuint),
          ),
        );

    aboutFadeAnimation = CurvedAnimation(
      parent: controller,
      curve: const Interval(0.3, 0.9, curve: Curves.easeInOut),
    );

    aboutSlideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.03), end: Offset.zero).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(0.4, 1.0, curve: Curves.easeOut),
          ),
        );
  }

  void startAnimation() {
    startTimer = Timer(const Duration(milliseconds: 100), () {
      controller.forward();
    });
  }

  void disposeController() {
    startTimer?.cancel();
    controller.dispose();
  }

  Future<void> openUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      debugPrint('Error launching URL: $e');
    }
  }
}
