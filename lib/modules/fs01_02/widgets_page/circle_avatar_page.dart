import 'package:flutter/material.dart';

import 'package:fs01/widgets/circle_avatar.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircleAvt(),
      ],
    );
  }
}
