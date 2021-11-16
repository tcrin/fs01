import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';

class TitleWidget extends StatelessWidget {
  final String? title;
  final String? title2;
  const TitleWidget({Key? key, this.title,this.title2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: title!,style: AppStyle.h0.copyWith(fontWeight: FontWeight.bold)),
          TextSpan(text: '\n'),
          TextSpan(text: title2!,style: AppStyle.h0.copyWith(fontWeight: FontWeight.bold)),
        ],
      ),
      textAlign: TextAlign.left,
    );
  }
}
