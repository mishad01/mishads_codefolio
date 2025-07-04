import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_theme.dart';
import 'package:mishads_codefolio/core/utils/smooth_scroll_behavior.dart';
import 'package:mishads_codefolio/feature/home/view/home_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Web extends StatelessWidget {
  const Web({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        if (kIsWeb ||
            screenType == ScreenType.tablet ||
            screenType == ScreenType.desktop) {
          return MaterialApp(
            title: 'Flutter Web App',
            theme: WebTheme.lightTheme,
            darkTheme: WebTheme.darkTheme,
            scrollBehavior: SmoothScrollBehavior(),
            home: const HomeView(),
          );
        } else {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text(
                  'This app is only available on web or tablet devices.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
