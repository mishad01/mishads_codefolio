import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/app_colors.dart';
import 'package:mishads_codefolio/core/utils/screen_size.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.gray900,
      body: Padding(
        padding: EdgeInsets.all(ScreenSize.scaleWidth(context, 8)),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                width: ScreenSize.scaleWidth(context, 622),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    ScreenSize.scaleWidth(context, 30),
                  ),
                  color: AppColors.gray800,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "About",
                          style: TextStyle(color: AppColors.white),
                        ),
                      ),
                      TextButton(onPressed: () {}, child: Text("Education")),
                      TextButton(onPressed: () {}, child: Text("Experience")),
                    ],
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
