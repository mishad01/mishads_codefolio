import 'package:flutter/material.dart';

import '../../../data/project_data.dart';
import '../model/project_model.dart';
import '../widgets/project_card.dart';

enum ProjectType { all, flutter, kotlin, ml }

class ProjectsListView extends StatelessWidget {
  final ProjectType type;
  const ProjectsListView({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final List<ProjectModel> filteredProjects;

    switch (type) {
      case ProjectType.flutter:
        filteredProjects = projectData
            .where((project) => project.categories.contains('Flutter'))
            .toList();
        break;
      case ProjectType.kotlin:
        filteredProjects = projectData
            .where(
              (project) => project.techStack.any((tech) {
                final lower = tech.toLowerCase();
                return lower.contains('kotlin') || lower.contains('jetpack');
              }),
            )
            .toList();
        break;
      case ProjectType.ml:
        filteredProjects = projectData
            .where(
              (project) => project.categories.any((cat) {
                final lower = cat.toLowerCase();
                return lower.contains('ml') ||
                    lower.contains('ai') ||
                    lower.contains('dl');
              }),
            )
            .toList();
        break;
      case ProjectType.all:
        filteredProjects = projectData;
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: filteredProjects.length,
      itemBuilder: (context, index) =>
          ProjectCard(project: filteredProjects[index]),
    );
  }
}
