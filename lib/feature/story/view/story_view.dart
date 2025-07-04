import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_base_scaffold.dart';
import 'package:mishads_codefolio/core/utils/screen_size.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';

class StoryView extends StatefulWidget {
  const StoryView({super.key});

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  @override
  Widget build(BuildContext context) {
    return WebBaseScaffold(
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: ScreenSize.scaleHeight(context, 600),

            child: Center(
              child: WebText("Will be adding soon", color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
