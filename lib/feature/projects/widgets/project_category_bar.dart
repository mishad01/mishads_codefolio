import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/config/web_colors.dart';
import '../view_model/project_bar_view_model.dart';

class ProjectCategoryBar extends StatelessWidget {
  final ProjectBarViewModel model;
  final PageController pageController;

  const ProjectCategoryBar({
    super.key,
    required this.model,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: SizedBox(
        width: 450,
        height: 30,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: model.categories.length,
          separatorBuilder: (_, __) => const SizedBox(width: 12),
          itemBuilder: (context, index) {
            final isSelected = model.selectedIndex == index;
            return GestureDetector(
              onTap: () {
                model.changeIndex(index);
                pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOutExpo,
                );
              },
              child: Container(
                width: 90,
                height: 10,
                decoration: BoxDecoration(
                  color: isSelected ? WebColors.purple300 : WebColors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  model.categories[index],
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
