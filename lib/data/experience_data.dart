import 'package:flutter/cupertino.dart';

import '../feature/experience/model/experience_model.dart';

class ExperienceData with ChangeNotifier {
  final List<ExperienceModel> _experienceData = [
    ExperienceModel(
      compnayName: 'Brain Station 23 PLC',
      position: 'Software Engineer I',
      type: 'Full-time',
      time: 'Jul 2025 - Present',
      description:
          '• Built scalable data layers using REST (Dio + Retrofit) and GraphQL (graphql_flutter), integrating Shopify Storefront API alongside a custom backend.\n'
          '• Applied Riverpod across 20+ feature domains following clean architecture — repositories, use cases, and domain entities.\n'
          '• Integrated Firebase Cloud Messaging (FCM) for push notifications across foreground, background, and terminated states, including deep linking.\n'
          '• Configured multi-environment setups (dev, UAT, production) with separate Firebase projects and Shorebird for OTA updates.\n'
          '• Integrated rich media: video playback, YouTube embedding, and 3D product model rendering.\n'
          '• Managed Android & iOS app releases — build configuration, signing, and deployment to Play Store and App Store.',
      skills:
          'Flutter / Dart / Riverpod / Clean Architecture / REST / GraphQL / Firebase / FCM / Shorebird / iOS & Android Deployment',
      location: 'Dhaka, Bangladesh',
    ),
    ExperienceModel(
      compnayName: 'Ostad (EdTech Platform)',
      position: 'Instructor',
      type: 'Part-time · Remote',
      time: 'Feb 2026 - Present',
      description:
          '• Mentoring students through a live "App Development with Flutter & AI" course.\n'
          '• Guiding learners from fundamentals to production-level Flutter development with real-world AI integration.\n'
          '• Supporting student growth through structured lessons, hands-on practice, and live feedback sessions.',
      skills:
          'Flutter / Dart / Pedagogy / Curriculum Design / AI Integration / Mentorship / Live Instruction',
      location: 'Remote',
    ),
    ExperienceModel(
      compnayName: 'EDU Computer Club',
      position: 'Sub-Executive',
      type: 'Club Role',
      time: 'Oct 2022 - Present',
      description:
          '• Leading initiatives and coordinating technical sessions to enhance student learning.\n'
          '• Organized programming contests, hackathons, and hands-on workshops on app and web development.\n'
          '• Fostered a collaborative environment, mentoring junior participants in competitive programming.',
      skills:
          'Leadership / Competitive Programming / Event Organization / Team Management / Mentorship',
      location: 'Chattogram, Bangladesh',
    ),
    ExperienceModel(
      compnayName: 'Maverick Softwares',
      position: 'Software Developer',
      type: 'Hybrid',
      time: 'Jan 2024 - Dec 2024',
      description:
          '• Developed and maintained mobile applications using Flutter in a hybrid team environment.\n'
          '• Contributed to an HR Management System with feature development and bug fixes.\n'
          '• Improved app performance through optimization and efficient state management (Riverpod, Provider).\n'
          '• Collaborated with designers and backend teams to ensure smooth UI/API integration.',
      skills:
          'Flutter / Dart / Riverpod / Provider / REST API / Mobile App Development / Git / Team Collaboration',
      location: 'Hybrid',
    ),
  ];

  List<ExperienceModel> get educationData => _experienceData;
}
