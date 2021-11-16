import 'package:flutter/material.dart';
import 'package:fs01/themes/app_colors.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColor.backgroundGradientColor,
      ),
    );
  }
}
