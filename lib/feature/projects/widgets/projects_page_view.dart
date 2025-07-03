import 'package:flutter/material.dart';
import 'package:mishads_codefolio/feature/projects/widgets/project_list_view.dart';

class ProjectsPageView extends StatelessWidget {
  final PageController pageController;
  final void Function(int) onPageChanged;

  const ProjectsPageView({
    super.key,
    required this.pageController,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: onPageChanged,
      children: const [
        ProjectsListView(type: ProjectType.all),
        ProjectsListView(type: ProjectType.flutter),
        ProjectsListView(type: ProjectType.kotlin),
        ProjectsListView(type: ProjectType.ml),
      ],
    );
  }
}
