import 'package:flutter/cupertino.dart';

class AppColor {
  static const Color primaryColor = Color(0xff242A37);
  static const Color black = Color(0xff000000);
  static Color blackLinear = const Color(0xff000000).withOpacity(0.2);
  static const Color white = Color(0xffffffff);

  static const Color orangeLinear = Color(0xffFF8960);
  static const Color pinkLinear = Color(0xffF54B64);
  static const LinearGradient buttonGradientColor = LinearGradient(
      colors: [pinkLinear, orangeLinear],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight);
  static LinearGradient backgroundGradientColor = LinearGradient(
      colors: [primaryColor, blackLinear],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter);

  static const Color textColor = Color(0xffFFFFFF);

  static const Color borderColor = Color(0xffFFFFFF);

  static const Color textColor2 = Color(0xff4E586E);

  static const Color pinkColor = Color(0xffFF62A5);
}
