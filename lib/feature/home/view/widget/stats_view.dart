import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/config/web_colors.dart';
import '../../../../core/utils/web_custom_text.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});

  static const List<Map<String, String>> _stats = [
    {
      'value': '400+',
      'label': 'DSA Problems Solved',
      'sub': 'LeetCode & Codeforces',
      'icon': '🧩',
    },
    {
      'value': '2+',
      'label': 'Years Experience',
      'sub': 'Professional & freelance',
      'icon': '💼',
    },
    {
      'value': '30+',
      'label': 'Projects Built',
      'sub': 'Flutter, Kotlin, Python & more',
      'icon': '🚀',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Wrap(
        spacing: 3.w,
        runSpacing: 3.h,
        alignment: WrapAlignment.center,
        children: _stats.map((s) => _StatCard(stat: s)).toList(),
      ),
    );
  }
}

class _StatCard extends StatefulWidget {
  final Map<String, String> stat;
  const _StatCard({required this.stat});

  @override
  State<_StatCard> createState() => _StatCardState();
}

class _StatCardState extends State<_StatCard> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 240,
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _hovered ? WebColors.gray700 : WebColors.gray800,
          border: Border.all(
            color: _hovered
                ? WebColors.primary.withOpacity(0.6)
                : WebColors.primary.withOpacity(0.2),
            width: 1.5,
          ),
          boxShadow: _hovered
              ? [
                  BoxShadow(
                    color: WebColors.primary.withOpacity(0.15),
                    blurRadius: 20,
                    spreadRadius: 2,
                  )
                ]
              : [],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(widget.stat['icon']!, style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 10),
            Text(
              widget.stat['value']!,
              style: GoogleFonts.urbanist(
                fontSize: 34,
                fontWeight: FontWeight.w800,
                color: WebColors.primary,
              ),
            ),
            const SizedBox(height: 4),
            WebText(
              widget.stat['label']!,
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 2),
            WebText(
              widget.stat['sub']!,
              color: WebColors.gray400,
              fontSize: 11.sp,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
