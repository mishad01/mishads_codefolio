import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/core/utils/smooth_scroll_behavior.dart';
import 'package:mishads_codefolio/feature/home/view/widget/web_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WebBaseScaffold extends StatefulWidget {
  final Widget widget;

  const WebBaseScaffold({super.key, required this.widget});

  @override
  State<WebBaseScaffold> createState() => _WebBaseScaffoldState();
}

class _WebBaseScaffoldState extends State<WebBaseScaffold> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.gray900,
      body: ScrollConfiguration(
        behavior: SmoothScrollBehavior(),
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              left: Adaptive.w(8),
              right: Adaptive.w(8),
              top: 2.h,
            ),
            child: Column(
              children: [
                WebBar(),
                widget.widget, // your main content
              ],
            ),
          ),
        ),
      ),
    );
  }
}
