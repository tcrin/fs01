import 'package:flutter/material.dart';

class StatusActive extends StatelessWidget {
  final double size;
  final Color color;
  const StatusActive({Key? key,this.size=12.0,this.color=Colors.green}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      // color: Colors.green,
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          ),
    );
  }
}
