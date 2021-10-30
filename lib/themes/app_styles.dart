import 'package:flutter/material.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:fs01/themes/app_fonts.dart';

class AppStyle {
  static const TextStyle h0 = TextStyle(
      fontFamily: AppFonts.lato,
      fontSize: 34,
      color: AppColor.textColor,
      decoration: TextDecoration.none);
  static const TextStyle h1 = TextStyle(
      fontFamily: AppFonts.lato,
      fontSize: 17,
      color: AppColor.textColor,
      decoration: TextDecoration.none);
  static const TextStyle h3 = TextStyle(
      fontFamily: AppFonts.lato,
      fontSize: 13,
      color: AppColor.textColor,
      decoration: TextDecoration.none);
  static const TextStyle h4 = TextStyle(
      fontFamily: AppFonts.lato,
      fontSize: 11,
      color: AppColor.textColor,
      decoration: TextDecoration.none);

  static const TextStyle time = TextStyle(
      fontFamily: AppFonts.lato,
      fontSize: 13,
      color: AppColor.timeColor,
      decoration: TextDecoration.none);
}
