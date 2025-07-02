import 'package:flutter/material.dart';

TextButton barTextButton(String title, VoidCallback onPressed, [Color? color]) {
  return TextButton(
    onPressed: onPressed,
    child: SizedBox(
      height: 24,
      child: Text(title, style: TextStyle(color: color)),
    ),
  );
}
