import 'package:flutter/material.dart';
import 'package:fs01/themes/app_colors.dart';

class StatusActive extends StatelessWidget {
  final double size;
  final Color color;
  final double? widthBorder;
  final Color borderColor;

  const StatusActive(
      {Key? key,
      this.size = 12.0,
      this.color = Colors.green,
      this.widthBorder,
      this.borderColor = AppColor.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      // color: Colors.green,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: widthBorder == null
            ? null
            : Border.all(
                width: widthBorder!,
                color: borderColor,
              ),
      ),
    );
  }
}
