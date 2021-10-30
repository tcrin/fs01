import 'package:flutter/material.dart';

class CircleAvt extends StatelessWidget {
  final double radius;
  final String? avatar;

  const CircleAvt(
      {Key? key,
      this.radius = 30.0,
      this.avatar = 'https://randomuser.me/api/portraits/med/men/48.jpg'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: avatar!.isNotEmpty ? NetworkImage(avatar!) : null,
    );
  }
}
