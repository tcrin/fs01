import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';

class LatestMessage extends StatelessWidget {
  final String content;
  final TextStyle textStyle;

  const LatestMessage(
      {Key? key, this.content = '', this.textStyle = AppStyle.h1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: textStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
