import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mishads_codefolio/core/config/web_colors.dart';

IconButton barIconButton(String icon, VoidCallback onPressed) {
  return IconButton(
    onPressed: onPressed,
    icon: SvgPicture.asset(
      icon,
      colorFilter: ColorFilter.mode(WebColors.purple300, BlendMode.srcIn),
      height: 24,
      width: 24,
      fit: BoxFit.fill,
    ),
  );
}
