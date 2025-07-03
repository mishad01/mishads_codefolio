import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_asset_path.dart';
import 'package:mishads_codefolio/core/config/web_base_scaffold.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/config/web_colors.dart';
import '../../../core/utils/screen_size.dart';
import '../widget/institution_card.dart';

class EducationView extends StatefulWidget {
  const EducationView({super.key});

  @override
  State<EducationView> createState() => _EducationViewState();
}

class _EducationViewState extends State<EducationView> {
  final List<Map<String, String>> institution = [
    {
      "image": WebAssetPath.college,
      "title": "Higher Secondary",
      "gpa": "GPA: 5.00 out of 5.00 (Science)",
      "inst": "Bangladesh Navy College, Chattogram",
      "location": "Chattogram",
    },
    {
      "image": WebAssetPath.uni,
      "title": "Bachelor in Science",
      "gpa": "3.60 (Currently at 11th semester)",
      "inst": "Computer Science & Engineering\nEast Delta University",
      "location": "Chattogram",
    },
    {
      "image": WebAssetPath.school,
      "title": "Secondary",
      "gpa": "GPA: 5.00 out of 5.00 (Science)",
      "inst": "Nasirabad Government High School",
      "location": "Chattogram",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return WebBaseScaffold(
      widget: Center(
        child: Column(
          children: [
            WebText(
              "Where I Studied",
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 1.h),
            WebText(
              "These are the institutions that shaped my academic foundation.",
              color: WebColors.gray400,
              fontSize: 16.sp,
            ),
            SizedBox(height: 4.h),
            CarouselSlider.builder(
              itemCount: institution.length,
              itemBuilder: (context, index, realIndex) {
                return InstitutionCard(item: institution[index]);
              },
              options: CarouselOptions(
                height: ScreenSize.scaleHeight(context, 400),
                autoPlayAnimationDuration: const Duration(seconds: 1),
                autoPlay: true,
                viewportFraction: 0.33,
              ),
            ),
            SizedBox(height: 2.h),
            WebText(
              "My Publication",
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
            ),
            WebText(
              "What I Research",
              color: WebColors.gray400,
              fontSize: 16.sp,
            ),
            SizedBox(
              height: 60.h,
              width: 50.w,
              child: const Center(
                child: WebText(
                  "🚧 Ideas Loading... Please wait ⏳",
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
