import 'package:flutter/widgets.dart';
import 'package:mishads_codefolio/feature/home/model/skill_item_model.dart';

import '../core/config/web_icons.dart';

class TechnologiesData extends ChangeNotifier {
  final List<SkillCategory> _codingSkills = [
    SkillCategory(
      title: 'Publication in Both Stores',
      items: [
        SkillItemModel(name: 'App Store', iconPath: WebIcons.ios),
        SkillItemModel(name: 'Play Store', iconPath: WebIcons.googlePlay),
      ],
    ),
    SkillCategory(
      title: 'Programming Languages',
      items: [
        SkillItemModel(name: 'C++', iconPath: WebIcons.cplus),
        SkillItemModel(name: 'Java', iconPath: WebIcons.java),
        SkillItemModel(name: 'Dart', iconPath: WebIcons.dart),
        SkillItemModel(name: 'Python', iconPath: WebIcons.python),
        SkillItemModel(name: 'Kotlin', iconPath: WebIcons.kotlin),
      ],
    ),
    SkillCategory(
      title: 'Frameworks & Tools',
      items: [
        SkillItemModel(name: 'Flutter', iconPath: WebIcons.flutter),
        SkillItemModel(
          name: 'Jetpack Compose',
          iconPath: WebIcons.kotlin,
        ), // placeholder
        SkillItemModel(name: 'Node.js', iconPath: WebIcons.nodejs2),
      ],
    ),
    SkillCategory(
      title: 'Version Control',
      items: [
        SkillItemModel(name: 'Git', iconPath: WebIcons.git),
        SkillItemModel(name: 'GitHub', iconPath: WebIcons.github2),
      ],
    ),
    SkillCategory(
      title: 'Databases',
      items: [
        SkillItemModel(name: 'Oracle', iconPath: WebIcons.sqlite),
        SkillItemModel(name: 'MongoDB', iconPath: WebIcons.sqlite),
        SkillItemModel(name: 'SQLite', iconPath: WebIcons.sqlite),
        SkillItemModel(
          name: 'Room DB',
          iconPath: WebIcons.sqlite,
        ), // same icon as SQLite
        SkillItemModel(
          name: 'Hive (Flutter)',
          iconPath: WebIcons.flutter,
        ), // placeholder
      ],
    ),
    SkillCategory(
      title: 'Backend & Auth',
      items: [
        SkillItemModel(name: 'Firebase', iconPath: WebIcons.firebase),
        SkillItemModel(
          name: 'Supabase',
          iconPath: WebIcons.firebase,
        ), // placeholder
        SkillItemModel(name: 'Node.js', iconPath: WebIcons.nodejs2),
      ],
    ),
    SkillCategory(
      title: 'State Management',
      items: [
        SkillItemModel(name: 'Provider', iconPath: WebIcons.flutter),
        SkillItemModel(name: 'Riverpod', iconPath: WebIcons.flutter),
        SkillItemModel(name: 'BLoC', iconPath: WebIcons.flutter),
        SkillItemModel(name: 'GetX', iconPath: WebIcons.flutter),
      ],
    ),
  ];
  List<SkillCategory> get codingSkills => _codingSkills;
}
