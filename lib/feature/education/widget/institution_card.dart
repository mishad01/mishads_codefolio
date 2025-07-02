import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/utils/web_custom_text.dart';

class InstitutionCard extends StatefulWidget {
  const InstitutionCard({super.key, required this.item});

  final Map<String, String> item;

  @override
  State<InstitutionCard> createState() => _InstitutionCardState();
}

class _InstitutionCardState extends State<InstitutionCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Transform.scale(
        scale: _isHovered ? 1.02 : 1.0,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          margin: EdgeInsets.symmetric(horizontal: 1.w),
          height: 55.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: WebColors.gray800,
            borderRadius: BorderRadius.circular(20),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15,
                      offset: Offset(0, 8),
                    ),
                  ]
                : [],
          ),
          child: Padding(
            padding: EdgeInsets.all(2.h),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      widget.item["image"]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                WebText(
                  widget.item["title"]!,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                SizedBox(height: 1.h),
                WebText(
                  widget.item["gpa"]!,
                  fontSize: 14.sp,
                  color: WebColors.purple300,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(height: 1.h),
                WebText(
                  widget.item["inst"]!,
                  fontSize: 13.sp,
                  color: WebColors.gray300,

                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 1.h),
                WebText(
                  widget.item["location"]!,
                  fontSize: 13.sp,
                  color: WebColors.primary,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
