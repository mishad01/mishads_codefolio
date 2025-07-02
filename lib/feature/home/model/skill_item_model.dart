class SkillItemModel {
  final String name;
  final String iconPath;

  SkillItemModel({required this.name, required this.iconPath});
}

class SkillCategory {
  final String title;
  final List<SkillItemModel> items;

  SkillCategory({required this.title, required this.items});
}
