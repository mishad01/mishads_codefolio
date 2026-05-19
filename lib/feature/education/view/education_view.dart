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
      "gpa": "GPA: 5.00 / 5.00 (Science)",
      "inst": "Bangladesh Navy School and College, Chattogram",
      "location": "Chattogram",
    },
    {
      "image": WebAssetPath.uni,
      "title": "Bachelor of Science",
      "gpa": "CGPA: 3.60 / 4.00 — Thesis ongoing",
      "inst": "Computer Science & Engineering\nEast Delta University",
      "location": "Chattogram",
    },
    {
      "image": WebAssetPath.school,
      "title": "Secondary",
      "gpa": "GPA: 5.00 / 5.00 (Science)",
      "inst": "Nasirabad Government High School",
      "location": "Chattogram",
    },
  ];

  static const List<Map<String, String>> _certifications = [
    {
      'title': 'App Development with Flutter',
      'issuer': 'Ostad',
      'color': 'primary',
    },
    {
      'title': 'Flutter & Dart – The Complete Guide',
      'issuer': 'Udemy',
      'color': 'purple',
    },
    {
      'title': 'Android Mobile App Development',
      'issuer': 'Coursera',
      'color': 'primary',
    },
    {
      'title': 'Data Structures & Algorithms (C++)',
      'issuer': 'Udemy',
      'color': 'purple',
    },
    {
      'title': 'Object-Oriented Programming with C++',
      'issuer': 'Udemy',
      'color': 'primary',
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
              "Institutions that shaped my academic foundation",
              color: WebColors.gray400,
              fontSize: 14.sp,
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
            SizedBox(height: 6.h),
            WebText(
              "Certifications",
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 1.h),
            WebText(
              "Verified skills and completed courses",
              color: WebColors.gray400,
              fontSize: 14.sp,
            ),
            SizedBox(height: 3.h),
            _buildCertifications(context),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }

  Widget _buildCertifications(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 16,
      alignment: WrapAlignment.center,
      children: _certifications.map((c) => _CertCard(cert: c)).toList(),
    );
  }
}

class _CertCard extends StatefulWidget {
  final Map<String, String> cert;
  const _CertCard({required this.cert});

  @override
  State<_CertCard> createState() => _CertCardState();
}

class _CertCardState extends State<_CertCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final cert = widget.cert;
    final isPrimary = cert['color'] == 'primary';
    final accentColor = isPrimary ? WebColors.primary : WebColors.purple300;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        width: 280,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: _hovered ? WebColors.gray700 : WebColors.gray800,
          border: Border.all(
            color: _hovered
                ? accentColor.withOpacity(0.6)
                : accentColor.withOpacity(0.2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: accentColor.withOpacity(0.12),
              ),
              child: Text(
                cert['issuer']!,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: accentColor,
                ),
              ),
            ),
            const SizedBox(height: 10),
            WebText(
              cert['title']!,
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: WebColors.white,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.verified, size: 14, color: accentColor),
                const SizedBox(width: 4),
                WebText('Certified', color: accentColor, fontSize: 11),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
