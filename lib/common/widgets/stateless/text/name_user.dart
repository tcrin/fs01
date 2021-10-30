import 'package:flutter/material.dart';
import 'package:fs01/themes/app_styles.dart';

class NameUser extends StatelessWidget {
  final String name;
  final TextStyle textStyle;

  const NameUser({Key? key, this.name = '', this.textStyle = AppStyle.h3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: textStyle,
    );
  }
}
