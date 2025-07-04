import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/config/web_colors.dart';
import '../../../core/utils/screen_size.dart';
import '../../../core/utils/web_custom_text.dart';
import '../model/project_model.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.h),
      child: Container(
        width: ScreenSize.scaleWidth(context, 1520),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.sp),
          color: WebColors.gray800,
        ),
        child: Padding(
          padding: EdgeInsets.all(3.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WebText(
                      project.title,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    WebText(
                      project.duration,
                      fontSize: 16,
                      color: WebColors.gray400,
                    ),
                    WebText(
                      project.organization,
                      fontSize: 22,
                      color: WebColors.purple300,
                    ),
                    SizedBox(height: 1.h),
                    WebText(
                      project.description,
                      fontSize: 18,
                      color: WebColors.gray300,
                    ),
                  ],
                ),
              ),

              SizedBox(width: 3.w),

              // Right side
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WebText(
                      "Tech Stack:",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: project.techStack
                          .map(
                            (tech) => WebText(
                              tech,
                              fontSize: 18,
                              color: WebColors.purple300,
                            ),
                          )
                          .toList(),
                    ),
                    SizedBox(height: 2.h),
                    WebText(
                      "Skills:",
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: project.skills
                          .map(
                            (skill) => WebText(
                              skill,
                              fontSize: 18,
                              color: WebColors.gray400,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),

              if (project.imageUrl != null && project.imageUrl!.isNotEmpty)
                Expanded(
                  child: SizedBox(
                    height: 200,
                    width: 500,
                    child: Image.network(
                      project.imageUrl!,
                      fit: BoxFit.contain,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                      (loadingProgress.expectedTotalBytes!)
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.broken_image, size: 60),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
