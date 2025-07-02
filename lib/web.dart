import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_theme.dart';
import 'package:mishads_codefolio/feature/home/view/home_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Web extends StatelessWidget {
  const Web({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: WebTheme.lightTheme,
          darkTheme: WebTheme.darkTheme,
          home: HomeView(),
        );
      },
    );
  }
}
