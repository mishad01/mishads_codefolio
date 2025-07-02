import 'package:flutter/material.dart';
import 'package:mishads_codefolio/core/config/web_icons.dart';
import 'package:mishads_codefolio/core/utils/web_custom_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/config/web_colors.dart';

class MyExpertiseView extends StatefulWidget {
  const MyExpertiseView({super.key});

  @override
  State<MyExpertiseView> createState() => _MyExpertiseViewState();
}

class _MyExpertiseViewState extends State<MyExpertiseView> {
  final List<Map<String, String>> expertise = [
    {
      "img": WebIcons.mb,
      "title": "Mobile App Development",
      "languages": "Flutter, Kotlin, Getx, API Integration",
      "details":
          "Experienced in building cross-platform mobile apps using Flutter and native apps using Kotlin. Proficient in state management, API integration, and optimizing performance.",
    },
    {
      "img": WebIcons.bd,
      "title": "Backend Development",
      "languages":
          "Firebase, Supabase, SQL, SQLite, Node.js (basic), MongoDB, Express",
      "details":
          "Experienced in building scalable backends using Firebase and Supabase. Proficient in managing data with SQL, SQLite, and MongoDB. Skilled in API integration, authentication, and backend logic design. Familiar with Node.js and Express.js at a basic level, currently exploring modular backend structure and deployment practices.",
    },
    {
      "img": WebIcons.ml,
      "title": "Machine Learning & Deep Learning",
      "languages":
          "Python, NumPy, Pandas, TensorFlow, Keras, CNN, ANN, OpenCV, Scikit-learn",
      "details":
          "Experienced in machine learning and deep learning with hands-on projects involving artificial neural networks (ANN) and convolutional neural networks (CNN). Proficient in data preprocessing and manipulation using NumPy and Pandas. Skilled in developing and training models using TensorFlow and Keras. Knowledgeable in computer vision techniques using OpenCV and image classification tasks. Familiar with Scikit-learn for traditional ML algorithms and evaluation.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "MY ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 4.2.w,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: "EXPERTISE",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 4.2.w,
                  color: WebColors.primary,
                ),
              ),
            ],
          ),
        ),
        WebText(
          "What can I do",
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        SizedBox(height: 4.h),
        Wrap(
          spacing: 4.w,
          runSpacing: 4.h,
          alignment: WrapAlignment.center,
          children: expertise.map((item) {
            return Container(
              height: 55.h,
              width: 30.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black.withOpacity(0.7),
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.5.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      height: 15.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              if (item["title"] ==
                                  "Machine Learning & Deep Learning")
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(item["img"]!, scale: 5),
                                    SizedBox(
                                      width: 1.h,
                                    ), // spacing between icons
                                    Image.asset(WebIcons.dl, scale: 5),
                                  ],
                                )
                              else
                                Image.asset(item["img"]!),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    item["title"]!,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item["details"]!,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
