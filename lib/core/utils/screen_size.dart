import 'package:flutter/material.dart';

class ScreenSize {
  static const double baseWidth = 1920;
  static const double baseHeight = 3550;

  static Size size(BuildContext context) => MediaQuery.of(context).size;
  static double width(BuildContext context) => size(context).width;
  static double height(BuildContext context) => size(context).height;

  static double scaleWidth(BuildContext context, double figmaPixel) {
    return (figmaPixel / baseWidth) * width(context);
  }

  static double scaleHeight(BuildContext context, double figmaPixel) {
    return (figmaPixel / baseHeight) * height(context);
  }
}
