import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../home/view/widget/web_bar.dart';
import '../view_model/project_bar_view_model.dart';
import '../widgets/project_category_bar.dart';
import '../widgets/projects_page_view.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: context.read<ProjectBarViewModel>().selectedIndex,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ProjectBarViewModel>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const WebBar(),
            ProjectCategoryBar(model: model, pageController: _pageController),
            SizedBox(height: 2.h),
            Expanded(
              child: ProjectsPageView(
                pageController: _pageController,
                onPageChanged: model.changeIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
