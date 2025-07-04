import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/config/web_icons.dart';
import '../../../../core/utils/screen_size.dart';
import '../../view_model/stack_slide.dart';

class StackSlider extends StatelessWidget {
  final List<Map<String, dynamic>> stackItems = [
    {'name': 'Flutter', 'color': Color(0xFF02569B), 'image': WebIcons.flutter},
    {'name': 'Kotlin', 'color': Color(0xFF7F52FF), 'image': WebIcons.kotlin},
    {'name': 'Dart', 'color': Color(0xFF0175C2), 'image': WebIcons.dart},
    {'name': 'C++', 'color': Color(0xFF00599C), 'image': WebIcons.cplus},
    {'name': 'Java', 'color': Color(0xFF005082), 'image': WebIcons.java},
    {'name': 'Python', 'color': Color(0xFF3776AB), 'image': WebIcons.python},
    {
      'name': 'Firebase',
      'color': Color(0xFFDD6C00),
      'image': WebIcons.firebase,
    },
    {'name': 'GitHub', 'color': Color(0xFF636363), 'image': WebIcons.github},
    {'name': 'SQLite', 'color': Color(0xFF003B57), 'image': WebIcons.sqlite},
  ];
  StackSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StackSliderProvider>(context);
    final double containerWidth = ScreenSize.scaleWidth(context, 409);
    final double containerHeight = ScreenSize.scaleHeight(context, 250);
    final double horizontalSpacing = ScreenSize.scaleWidth(context, 20);

    return Center(
      child: Row(
        children: [
          SizedBox(
            height: ScreenSize.scaleHeight(context, 312),
            width: containerWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                WebText(
                  "2 years of",
                  color: WebColors.gray400,
                  fontSize: 16.sp,
                ),
                WebText(
                  "XP",
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.sp,
                ),
                WebText(
                  "with the most popular ecosystem for apps",
                  color: WebColors.gray400,
                  fontSize: 16.sp,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(width: 1.h),
          Expanded(
            child: CarouselSlider(
              options: CarouselOptions(
                height: containerHeight,
                viewportFraction: 0.4,
                enableInfiniteScroll: true,
                autoPlay: true,
                enlargeCenterPage: true,
                padEnds: false,
                autoPlayInterval: Duration(seconds: 2),
                initialPage: provider.currentIndex,
                onPageChanged: (index, reason) {
                  provider.updateIndex(index, stackItems.length - 1);
                },
              ),
              items: stackItems.map((item) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    return Center(
                      child: Container(
                        width: constraints.maxWidth,
                        margin: EdgeInsets.symmetric(
                          horizontal: horizontalSpacing / 2,
                        ),
                        decoration: BoxDecoration(
                          color: item['color'],
                          borderRadius: BorderRadius.circular(
                            ScreenSize.scaleWidth(context, 60),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      item['image'],
                                      placeholderBuilder: (context) =>
                                          const CircularProgressIndicator(),
                                      width: 6.w,
                                      height: 6.h,
                                      fit: BoxFit.contain,
                                    ),
                                    SizedBox(height: 1.h),
                                    WebText(
                                      item['name'],
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
