import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  final int flex;
  final Color color;
  final EdgeInsets margin;

  const Block(
      {Key? key,
        this.flex = 1,
        this.color = Colors.white,
        this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
        margin: margin,
      ),
    );
  }
}