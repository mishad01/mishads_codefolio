import 'package:flutter/material.dart';
import 'package:mishads_codefolio/web.dart';
import 'package:provider/provider.dart';

import 'data/technologies_data.dart';
import 'feature/home/view_model/stack_slide.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => StackSliderProvider(initialIndex: 0),
        ),
        ChangeNotifierProvider(create: (_) => TechnologiesData()),
      ],

      child: const Web(),
    ),
  );
}
