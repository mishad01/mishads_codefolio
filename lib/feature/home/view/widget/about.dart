import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/config/web_colors.dart';
import '../../../../core/config/web_social_links.dart';
import '../../../../core/utils/screen_size.dart';
import '../../../../core/utils/web_custom_text.dart';
import '../../view_model/home_view_model.dart';
import 'image_slider.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context, listen: false);
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 80.h),
        child: IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: ScreenSize.scaleWidth(context, double.infinity),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 2.w,
                                vertical: 1.h,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                color: Colors.white,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Text(
                                "Hello!",
                                style: TextStyle(
                                  fontFamily: "Lufga",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                            SizedBox(height: 2.h),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I'm ",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "MISHAD,",
                                    style: GoogleFonts.urbanist(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                      color: WebColors.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 1.h),
                            Text.rich(
                              TextSpan(
                                style: GoogleFonts.raleway(
                                  fontSize: 16.sp,
                                  color: WebColors.gray400,
                                  height: 1.5,
                                ),
                                children: [
                                  const TextSpan(text: "Over the past "),
                                  TextSpan(
                                    text: "3+ years",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: WebColors.white,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: ", I've been working as a ",
                                  ),
                                  TextSpan(
                                    text: "Software Developer",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: WebColors.white,
                                    ),
                                  ),
                                  const TextSpan(
                                    text:
                                        ", specializing in building modern cross-platform and native mobile apps using ",
                                  ),
                                  TextSpan(
                                    text:
                                        "Flutter, Kotlin, Jetpack Compose, Firebase, Supabase, Nodejs, Sql",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: WebColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6.h),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    model.openUrl(WebSocialLinks.cv);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(12.w, 8.h),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(2.w),
                                    ),
                                  ),
                                  child: WebText(
                                    "Download CV",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                SizedBox(width: 1.w),
                                ElevatedButton(
                                  onPressed: () {
                                    // TODO: Navigate to Experience Section
                                  },
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Expanded(child: ImageSlider()),
            ],
          ),
        ),
      ),
    );
  }
}
