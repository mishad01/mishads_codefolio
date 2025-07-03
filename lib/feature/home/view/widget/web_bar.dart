import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_icons.dart';
import 'package:mishads_codefolio/core/utils/web_navigator.dart';
import 'package:mishads_codefolio/feature/education/view/education_view.dart';
import 'package:mishads_codefolio/feature/experience/view/experience_view.dart';
import 'package:mishads_codefolio/feature/home/view/home_view.dart';
import 'package:mishads_codefolio/feature/home/view_model/bar_view_model.dart';
import 'package:mishads_codefolio/feature/projects/view/project_view.dart';
import 'package:provider/provider.dart';

import '../../../../core/config/web_colors.dart';
import '../../../../core/config/web_social_links.dart';
import '../../../../core/utils/screen_size.dart';
import 'bar_icon_button.dart';
import 'bar_text_button.dart';

class WebBar extends StatefulWidget {
  const WebBar({super.key});

  @override
  State<WebBar> createState() => _WebBarState();
}

class _WebBarState extends State<WebBar> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<BarViewModel>(context);

    return Center(
      child: Container(
        width: ScreenSize.scaleWidth(context, 622),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            ScreenSize.scaleWidth(context, 50),
          ),
          color: WebColors.gray800,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Wrap(
            spacing: 12.0,
            runSpacing: 12.0,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              barTextButton(
                "About",
                () {
                  model.setSelectedTab("About");
                  WebNavigator.pushTo(context, const HomeView());
                },
                model.selectedTab == "About"
                    ? WebColors.white
                    : WebColors.primary,
              ),

              barTextButton(
                "Experience",
                () {
                  model.setSelectedTab("Experience");
                  WebNavigator.pushTo(context, const ExperienceView());
                },
                model.selectedTab == "Experience"
                    ? WebColors.white
                    : WebColors.primary,
              ),
              barTextButton(
                "Projects",
                () {
                  model.setSelectedTab("Projects");
                  WebNavigator.pushTo(context, const ProjectView());
                },
                model.selectedTab == "Projects"
                    ? WebColors.white
                    : WebColors.primary,
              ),
              barTextButton(
                "Education",
                () {
                  model.setSelectedTab("Education");
                  WebNavigator.pushTo(context, const EducationView());
                },
                model.selectedTab == "Education"
                    ? WebColors.white
                    : WebColors.primary,
              ),
              barTextButton(
                "Story",
                () {
                  model.setSelectedTab("Story");
                },
                model.selectedTab == "Story"
                    ? WebColors.white
                    : WebColors.primary,
              ),

              barIconButton(WebIcons.github, () {
                model.openUrl(WebSocialLinks.githubLink);
              }),
              barIconButton(WebIcons.linkedin, () {
                model.openUrl(WebSocialLinks.linkedinLink);
              }),
              barIconButton(WebIcons.mail, () {
                model.openUrl('mailto:sakifrahman.dev@gmail.com');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
