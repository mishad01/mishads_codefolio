import 'package:flutter/material.dart';
import 'package:mishads_codefolio/feature/home/view_model/bar_view_model.dart';
import 'package:mishads_codefolio/feature/home/view_model/home_view_model.dart';
import 'package:mishads_codefolio/web.dart';
import 'package:provider/provider.dart';

import 'data/experience_data.dart';
import 'data/technologies_data.dart';
import 'feature/home/view_model/stack_slide.dart';
import 'feature/projects/view_model/project_bar_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => StackSliderProvider(initialIndex: 0),
        ),
        ChangeNotifierProvider(create: (_) => TechnologiesData()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => ExperienceData()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => BarViewModel()),
        ChangeNotifierProvider(create: (_) => ProjectBarViewModel()),
      ],

      child: const Web(),
    ),
  );
}
