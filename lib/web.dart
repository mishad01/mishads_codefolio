import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/app_theme.dart';
import 'package:mishads_codefolio/feature/home/view/home_view.dart';

class Web extends StatelessWidget {
  const Web({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: HomeView(),
    );
  }
}
