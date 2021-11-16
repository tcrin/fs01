import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';

class SubtitleWidget extends StatelessWidget {
  final String? title;

  const SubtitleWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title!,style: AppStyle.h3.copyWith(fontWeight: FontWeight.w100),);
  }
}
