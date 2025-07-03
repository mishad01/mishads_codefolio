import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WebTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: WebColors.primary,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: WebColors.lightBackground,
    primaryColor: WebColors.primary,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.raleway(fontSize: 16, color: WebColors.white),
      bodyMedium: GoogleFonts.raleway(fontSize: 14, color: WebColors.white),
      titleLarge: GoogleFonts.raleway(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: WebColors.white,
      ),
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: WebColors.lightBackground,
      foregroundColor: WebColors.lightText,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: WebColors.appThemeColor,
        foregroundColor: WebColors.appWhiteColor,
        minimumSize: Size(12.w, 8.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(textStyle: TextStyle(color: WebColors.white)),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: WebColors.primary,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: WebColors.darkBackground,
    primaryColor: WebColors.primary,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    ),
    textTheme: GoogleFonts.ralewayTextTheme().copyWith(
      bodyLarge: const TextStyle(color: WebColors.darkText),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: WebColors.darkBackground,
      foregroundColor: WebColors.darkText,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: WebColors.appThemeColor,
        foregroundColor: WebColors.appWhiteColor,
        minimumSize: Size(12.w, 8.h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      ),
    ),
  );
}
