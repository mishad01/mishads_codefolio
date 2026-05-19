import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishads_codefolio/core/config/web_icons.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/config/web_colors.dart';

class MyExpertiseView extends StatelessWidget {
  const MyExpertiseView({super.key});

  static const List<Map<String, String>> _expertise = [
    {
      "img": WebIcons.mb,
      "title": "Mobile App Development",
      "languages": "Flutter · Kotlin · Jetpack Compose · REST & GraphQL APIs",
      "details":
          "Building cross-platform mobile apps with Flutter and native Android with Kotlin. Proficient in Riverpod, BLoC, GetX, clean architecture, API integration, FCM push notifications, and Play Store / App Store deployment.",
      "color": "purple",
    },
    {
      "img": WebIcons.bd,
      "title": "Backend Integration",
      "languages": "Firebase · Supabase · SQL · Node.js · MongoDB",
      "details":
          "Experienced with Firebase (Firestore, Realtime DB, FCM, Auth) and Supabase for scalable backends. Skilled in REST and GraphQL API integration using Dio + Retrofit. Familiar with Node.js and Express at a practical level.",
      "color": "primary",
    },
    {
      "img": WebIcons.ml,
      "title": "Machine & Deep Learning",
      "languages": "Python · TensorFlow · Keras · CNN · ANN · OpenCV · Scikit-learn",
      "details":
          "Hands-on projects with ANN, CNN, and image processing using TensorFlow and Keras. Proficient in data preprocessing with NumPy and Pandas, computer vision with OpenCV, and classic ML algorithms with Scikit-learn.",
      "color": "purple",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "MY ",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w400,
              fontSize: 4.2.w,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: "EXPERTISE",
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w400,
                  fontSize: 4.2.w,
                  color: WebColors.primary,
                ),
              ),
            ],
          ),
        ),
        WebText(
          "What I can do",
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        SizedBox(height: 4.h),
        Wrap(
          spacing: 4.w,
          runSpacing: 4.h,
          alignment: WrapAlignment.center,
          children: _expertise
              .map((item) => _ExpertiseCard(item: item))
              .toList(),
        ),
      ],
    );
  }
}

class _ExpertiseCard extends StatefulWidget {
  final Map<String, String> item;
  const _ExpertiseCard({required this.item});

  @override
  State<_ExpertiseCard> createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<_ExpertiseCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isPrimary = widget.item['color'] == 'primary';
    final accent = isPrimary ? WebColors.primary : WebColors.purple300;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 50.h,
        width: 30.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _hovered ? WebColors.gray700 : WebColors.gray800,
          border: Border.all(
            color: _hovered
                ? accent.withValues(alpha: 0.65)
                : accent.withValues(alpha: 0.18),
            width: 1.5,
          ),
          boxShadow: _hovered
              ? [
                  BoxShadow(
                    color: accent.withValues(alpha: 0.12),
                    blurRadius: 24,
                    spreadRadius: 2,
                  ),
                ]
              : [],
        ),
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 15.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (widget.item["title"] == "Machine & Deep Learning")
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(widget.item["img"]!, scale: 5),
                          SizedBox(width: 1.h),
                          Image.asset(WebIcons.dl, scale: 5),
                        ],
                      )
                    else
                      Image.asset(widget.item["img"]!),
                  ],
                ),
              ),
            ),
            SizedBox(height: 1.h),
            WebText(
              widget.item["title"]!,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
              textAlign: TextAlign.center,
            ),
            WebText(
              widget.item["languages"]!,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: accent,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 0.8.h),
            Expanded(
              child: WebText(
                widget.item["details"]!,
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: WebColors.gray400,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
