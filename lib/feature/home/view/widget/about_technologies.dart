import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/feature/home/model/skill_item_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utils/screen_size.dart';
import '../../../../core/utils/web_custom_text.dart';
import '../../../../data/technologies_data.dart';

class AboutTechnologies extends StatelessWidget {
  const AboutTechnologies({super.key});

  @override
  Widget build(BuildContext context) {
    final technologies = context.watch<TechnologiesData>().codingSkills;

    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          WebText(
            "These are the\ntechnologies I've been using",
            fontSize: 18.sp,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(height: 5.h),
          _TechGrid(technologies: technologies),
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
}

class _TechGrid extends StatelessWidget {
  final List<SkillCategory> technologies;
  const _TechGrid({required this.technologies});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Wrap(
        spacing: 6.w,
        runSpacing: 16,
        children: technologies
            .map((cat) => _TechCard(category: cat))
            .toList(),
      ),
    );
  }
}

class _TechCard extends StatefulWidget {
  final SkillCategory category;
  const _TechCard({required this.category});

  @override
  State<_TechCard> createState() => _TechCardState();
}

class _TechCardState extends State<_TechCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: ScreenSize.scaleWidth(context, 250),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: _hovered ? WebColors.gray700 : Colors.transparent,
          border: Border.all(
            color: _hovered
                ? WebColors.primary.withValues(alpha: 0.6)
                : Colors.white.withValues(alpha: 0.08),
            width: 1.5,
          ),
          boxShadow: _hovered
              ? [
                  BoxShadow(
                    color: WebColors.primary.withValues(alpha: 0.10),
                    blurRadius: 18,
                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            WebText(
              widget.category.title,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 12),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.category.items.map((skill) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        fit: BoxFit.contain,
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
  }
}
