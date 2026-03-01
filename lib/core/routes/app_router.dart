import 'package:go_router/go_router.dart';
import 'package:mishads_codefolio/feature/education/view/education_view.dart';
import 'package:mishads_codefolio/feature/experience/view/experience_view.dart';
import 'package:mishads_codefolio/feature/home/view/home_view.dart';
import 'package:mishads_codefolio/feature/projects/view/project_view.dart';
import 'package:mishads_codefolio/feature/story/view/story_view.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeView()),
      GoRoute(
        path: '/experience',
        builder: (context, state) => const ExperienceView(),
      ),
      GoRoute(
        path: '/projects',
        builder: (context, state) => const ProjectView(),
      ),
      GoRoute(
        path: '/education',
        builder: (context, state) => const EducationView(),
      ),
      GoRoute(path: '/story', builder: (context, state) => const StoryView()),
    ],
  );
}
