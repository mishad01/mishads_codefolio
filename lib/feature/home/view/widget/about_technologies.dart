import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/feature/home/model/skill_item_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../../core/utils/web_custom_text.dart';
import '../../../../data/technologies_data.dart';

class AboutTechnologies extends StatefulWidget {
  const AboutTechnologies({super.key});

  @override
  State<AboutTechnologies> createState() => _AboutTechnologiesState();
}

class _AboutTechnologiesState extends State<AboutTechnologies> {
  @override
  Widget build(BuildContext context) {
    final technologies = context.watch<TechnologiesData>().codingSkills;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Added to minimize column height
        children: [
          WebText(
            "These are the\ntechnologies I've been using",
            fontSize: 18.sp,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(height: 5.h),
          technologiesListView(technologies),
          SizedBox(height: 5.h),
          Center(
            child: WebText(
              "DM FOR ANY KINDA COLLAB OR FEEDBACK ❤️",
              fontSize: 12.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Widget technologiesListView(List<SkillCategory> technologies) {
    return Align(
      alignment: Alignment.center,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Wrap(
            spacing: 5.w,
            runSpacing: 16,
            children: technologies.map((category) {
              return Material(
                borderRadius: BorderRadius.circular(12),
                color: Colors.transparent,
                elevation: 2,
                child: Container(
                  width: ScreenSize.scaleWidth(context, 250),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white.withAlpha(30)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      WebText(
                        category.title,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(height: 12),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: category.items.map((skill) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.fiber_manual_record,
                                  size: 8.sp,
                                  color: WebColors.gray400,
                                ),
                                SizedBox(width: 2.w),

                                SvgPicture.asset(
                                  skill.iconPath,
                                  height: 4.h,
                                  width: 4.w,
                                ),
                                SizedBox(width: 2.w),
                                Expanded(
                                  child: WebText(skill.name, fontSize: 12.sp),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
