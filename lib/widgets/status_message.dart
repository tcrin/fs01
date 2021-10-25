import 'package:flutter/material.dart';
import 'package:fs01/values/app_colors.dart';

class StatusMessage extends StatelessWidget {
  final double size;
  final Color color1;
  final Color color2;
  final int count;
  final Color textColor;

  const StatusMessage(
      {Key? key,
      this.size = 18.0,
      this.color1 = AppColor.orangeLinear,
      this.color2 = AppColor.pinkLinear,
      this.count = 1,
      this.textColor = AppColor.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      // color: Colors.green,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$count',
          style: TextStyle(
            decoration: TextDecoration.none,
            color: textColor,
            fontSize: 10,
          ),
        ),
      ),
    );
  }
}
