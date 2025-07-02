import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_base_scaffold.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:mishads_codefolio/core/utils/screen_size.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/config/web_social_links.dart';
import '../../../data/experience_data.dart';
import '../../home/view_model/home_view_model.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeViewModel>(context, listen: false);
    final experienceList = Provider.of<ExperienceData>(context).educationData;

    return WebBaseScaffold(
      widget: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WebText(
              "< Here, you can know me a little more and see my\nwhole experience as a Software Engineer. >",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 2.h),
            ElevatedButton(
              onPressed: () {
                model.openUrl(WebSocialLinks.cv);
              },
              child: WebText(
                "Download CV",
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
            SizedBox(height: 5.h),
            ...experienceList.map(
              (exp) => Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Container(
                  height: ScreenSize.scaleHeight(context, 400),
                  width: ScreenSize.scaleWidth(context, 1520),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.sp),
                    color: WebColors.gray800,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 6.h, left: 3.w, right: 3.w),
                    child: Row(
                      children: [
                        // Left Column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WebText(
                                exp.position,
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                              ),
                              WebText(
                                exp.type,
                                color: WebColors.purple300,
                                fontSize: 22,
                              ),
                              WebText(
                                "Time - ${exp.time}",
                                fontSize: 16,
                                color: WebColors.gray400,
                              ),
                              WebText(
                                exp.location,
                                fontSize: 16,
                                color: WebColors.gray400,
                              ),
                            ],
                          ),
                        ),

                        // Right Column
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              WebText(exp.compnayName, fontSize: 22),
                              SizedBox(height: 2.h),
                              WebText(
                                exp.description,
                                color: WebColors.gray400,
                                fontSize: 18,
                              ),
                              SizedBox(height: 2.h),
                              WebText(
                                exp.skills,
                                color: WebColors.purple300,
                                fontSize: 18,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
