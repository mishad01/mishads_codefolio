import 'package:flutter/cupertino.dart';

import '../feature/experience/model/experience_model.dart';

class ExperienceData with ChangeNotifier {
  final List<ExperienceModel> _experienceData = [
    ExperienceModel(
      compnayName: 'Brain Station 23',
      position: 'Software Engineer - I',
      type: 'Full-time',
      time: 'Jul 2025 - Present',
      description:
          '• Developing and maintaining enterprise-level applications for both Android and iOS platforms.\n'
          '• Delivering robust and scalable solutions following clean architecture principles.\n'
          '• Collaborating with cross-functional teams to publish and manage apps on the Google Play Store and Apple App Store.\n'
          '• Participating in code reviews and mentoring team members on best practices.',
      skills:
          'Flutter / Dart / Clean Architecture / App Store Deployment / Play Store Deployment / Git / Team Collaboration',
      location: 'Dhaka, Bangladesh',
    ),
    ExperienceModel(
      compnayName: 'Geeky Solutions',
      position: 'Apprenticeship',
      type: 'Learnathon 3.0 (Sponsored by BrainStation23)',
      time: 'Jan 2025 - Apr 2025',
      description:
          '• Participated in an intensive 3-month training program focused on industry-level software development practices.\n'
          '• Explored and implemented state management solutions including BLoC architecture.\n'
          '• Developed collaborative team projects, gaining experience in agile workflows and sprint planning.\n'
          '• Acquired knowledge in UI/UX principles, Git version control, and RESTful API integration.',
      skills:
          'BLoC / Agile / Git / REST API / Project Management / Cross-platform Development / CI-CD',
      location: 'Dhaka, Bangladesh',
    ),
    ExperienceModel(
      compnayName: 'EDU Computer Club',
      position: 'Sub-Executive',
      type: 'Club Role',
      time: 'Oct 2025 - Present',
      description:
          '• Leading initiatives and coordinating technical sessions to enhance student learning.\n'
          '• Spearheaded programming contests and hands-on workshops on web and app development.\n'
          '• Fostered a collaborative environment among members and mentored junior participants.',
      skills:
          'Leadership / Competitive Programming / Event Organization / Team Management / Public Speaking / Mentorship',
      location: 'Chattogram, Bangladesh',
    ),
    ExperienceModel(
      compnayName: 'Maverick Softwares™',
      position: 'Software Developer Intern',
      type: 'Internship',
      time: 'Jan 2024 - Jun 2024',
      description:
          '• Worked in a hybrid environment on a Human Resource Management System using Flutter.\n'
          '• Implemented features using Riverpod and Provider for effective state management.\n'
          '• Collaborated with designers and backend teams to ensure smooth UI/API integration.\n'
          '• Performed bug fixing, feature optimization, and UI polishing for multiple app modules.',
      skills:
          'Flutter / Riverpod / Provider / REST API / Mobile App Development / UI Polishing / Git / Team Collaboration',
      location: 'Chattogram, Bangladesh',
    ),
  ];

  List<ExperienceModel> get educationData => _experienceData;
}
