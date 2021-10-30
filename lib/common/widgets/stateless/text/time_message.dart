import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';

class TimeMessage extends StatelessWidget {
  final String time;
  final TextStyle textStyle;
  const TimeMessage({Key? key,this.time = '',this.textStyle=AppStyle.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(time,style: textStyle,);
  }
}
