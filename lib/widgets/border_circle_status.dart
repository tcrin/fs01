import 'package:flutter/material.dart';

class BorderCircleStatus extends StatelessWidget {
  final double sizeBorder;
  final double deep;
  final Color color;

  const BorderCircleStatus(
      {Key? key,
      this.sizeBorder = 18.0,
      this.deep = 1.0,
      this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeBorder,
      height: sizeBorder,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: deep,
        ),
      ),
    );
  }
}
