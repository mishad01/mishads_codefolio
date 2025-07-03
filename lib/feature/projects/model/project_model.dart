class ProjectModel {
  final String title;
  final String description;
  final String duration;
  final String organization;
  final List<String> features;
  final List<String> techStack;
  final List<String> skills;
  final List<String> categories;
  final String? imageUrl;

  ProjectModel({
    required this.title,
    required this.description,
    required this.duration,
    required this.organization,
    required this.features,
    required this.techStack,
    required this.skills,
    required this.categories,
    this.imageUrl,
  });
}
