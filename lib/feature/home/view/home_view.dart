import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_base_scaffold.dart';
import 'package:mishads_codefolio/core/utils/screen_size.dart';
import 'package:mishads_codefolio/feature/home/view/widget/about.dart';
import 'package:mishads_codefolio/feature/home/view/widget/about_technologies.dart';
import 'package:mishads_codefolio/feature/home/view/widget/my_expertise_view.dart';
import 'package:mishads_codefolio/feature/home/view/widget/stack_slider.dart';
import 'package:mishads_codefolio/feature/home/view/widget/web_bar.dart';
import 'package:mishads_codefolio/feature/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late HomeViewModel model;

  @override
  void initState() {
    super.initState();

    model = HomeViewModel()..init(this);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      model.startAnimation();
    });
  }

  @override
  void dispose() {
    model.disposeController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeViewModel>.value(
      value: model,
      child: Consumer<HomeViewModel>(
        builder: (context, model, _) {
          return WebBaseScaffold(
            widget: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.all(ScreenSize.scaleWidth(context, 16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    animatedAbout(model),
                    stackSlider(model),
                    SizedBox(height: 10.h),
                    MyExpertiseView(),
                    SizedBox(height: 10.h),
                    AboutTechnologies(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget stackSlider(HomeViewModel model) {
    return AnimatedBuilder(
      animation: model.controller,
      builder: (context, child) => AnimatedOpacity(
        opacity: model.aboutFadeAnimation.value,
        duration: const Duration(milliseconds: 800),
        child: Transform.translate(
          offset: model.aboutSlideAnimation.value,
          child: StackSlider(),
        ),
      ),
    );
  }

  Widget animatedAbout(HomeViewModel model) {
    return AnimatedBuilder(
      animation: model.controller,
      builder: (context, child) => AnimatedOpacity(
        opacity: model.aboutFadeAnimation.value,
        duration: const Duration(milliseconds: 800),
        child: Transform.translate(
          offset: model.aboutSlideAnimation.value,
          child: const About(),
        ),
      ),
    );
  }

  Widget animatedBar(HomeViewModel model) {
    return AnimatedBuilder(
      animation: model.controller,
      builder: (context, _) => AnimatedOpacity(
        opacity: model.fadeAnimation.value,
        duration: const Duration(milliseconds: 600),
        child: Transform.translate(
          offset: model.slideAnimation.value,
          child: Center(
            child: SizedBox(
              width: ScreenSize.scaleWidth(context, 622),
              child: WebBar(),
            ),
          ),
        ),
      ),
    );
  }
}
