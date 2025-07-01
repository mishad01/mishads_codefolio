import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishads_codefolio/core/config/web_base_scaffold.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/core/config/web_icons.dart';
import 'package:mishads_codefolio/core/config/web_social_links.dart';
import 'package:mishads_codefolio/core/utils/screen_size.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:mishads_codefolio/feature/home/view/widget/bar_icon_button.dart';
import 'package:mishads_codefolio/feature/home/view/widget/bar_text_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _aboutFadeAnimation;
  late final Animation<Offset> _aboutSlideAnimation;
  bool _initialized = false;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 1200),
        )..addStatusListener((status) {
          if (status == AnimationStatus.completed) {
            if (mounted) {
              setState(() => _initialized = true);
            }
          }
        });

    // Navbar animations
    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.6, curve: Curves.easeInOutQuint),
    );

    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.04), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.2, 1.0, curve: Curves.easeOutQuint),
          ),
        );

    // About section animations - separate from navbar
    _aboutFadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.3, 0.9, curve: Curves.easeInOut),
    );

    _aboutSlideAnimation =
        Tween<Offset>(
          begin: const Offset(0, 0.03), // Reduced from 0.1 for smoother effect
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.4, 1.0, curve: Curves.easeOut),
          ),
        );

    // Start animation after first frame with proper timing
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            _controller.forward();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _launchUrl(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      // Handle error gracefully
      debugPrint('Error launching URL: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WebBaseScaffold(
      widget: SingleChildScrollView(
        physics: const BouncingScrollPhysics(), // Smoother scrolling
        child: Padding(
          padding: EdgeInsets.all(ScreenSize.scaleWidth(context, 16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // WebBar with optimized animation
              AnimatedOpacity(
                opacity: _fadeAnimation.value,
                duration: const Duration(milliseconds: 600),
                child: Transform.translate(
                  offset: _slideAnimation.value,
                  child: Center(
                    child: SizedBox(
                      width: ScreenSize.scaleWidth(
                        context,
                        622,
                      ), // or any fixed width
                      child: webBar(context),
                    ),
                  ),
                ),
              ),

              // About section with separate animation timing
              Padding(
                padding: EdgeInsets.only(top: 14.h),
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return AnimatedOpacity(
                      opacity: _aboutFadeAnimation.value,
                      duration: const Duration(milliseconds: 800),
                      child: Transform.translate(
                        offset: _aboutSlideAnimation.value,
                        child: SizedBox(
                          width: ScreenSize.scaleWidth(context, 662),
                          child: about(context),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget about(BuildContext context) {
    final double contentWidth = ScreenSize.scaleWidth(context, 662);

    return SizedBox(
      width: contentWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WebText("Hi, I'm Mishad", fontSize: 22.sp),
          const SizedBox(height: 10),
          Text.rich(
            TextSpan(
              style: GoogleFonts.raleway(
                fontSize: 16.sp,
                color: WebColors.gray400,
                height: 1.5, // Added line height for better readability
              ),
              children: [
                const TextSpan(text: "During these "),
                TextSpan(
                  text: "3 years",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: WebColors.white,
                  ),
                ),
                const TextSpan(text: " as "),
                TextSpan(
                  text: "Software Engineer",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: WebColors.white,
                  ),
                ),
                const TextSpan(
                  text:
                      ". My role has extended beyond coding to effective communication with various departments, to define new features and spearheading the development of new apps.",
                ),
              ],
            ),
          ),
          SizedBox(height: 6.h),
          // Wrap buttons in LayoutBuilder for better responsive handling
          LayoutBuilder(
            builder: (context, constraints) {
              return Row(
                children: [
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(12.w, 8.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.w),
                        ),
                        elevation: 2, // Added subtle elevation
                      ),
                      child: WebText(
                        "Download CV",
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  SizedBox(width: 1.w),
                  Flexible(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(12.w, 8.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.w),
                          side: const BorderSide(
                            color: WebColors.purple300,
                            width: 1,
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      child: WebText(
                        "See Experiences",
                        fontSize: 12.sp,
                        color: WebColors.purple300,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget webBar(BuildContext context) {
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
              barTextButton("About", () {}, WebColors.white),
              barTextButton("Education", () {}),
              barTextButton("Experience", () {}),
              barTextButton("Story", () {}),
              barTextButton("Projects", () {}),
              barIconButton(WebIcons.github, () {
                _launchUrl(WebSocialLinks.githubLink);
              }),
              barIconButton(WebIcons.linkedin, () {
                _launchUrl(WebSocialLinks.linkedinLink);
              }),
              barIconButton(WebIcons.mail, () {}),
            ],
          ),
        ),
      ),
    );
  }
}
