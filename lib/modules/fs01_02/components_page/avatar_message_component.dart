import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/components_page/border_status_message_component.dart';
import 'package:fs01/widgets/circle_avatar.dart';

class AvatarMessage extends StatelessWidget {
  const AvatarMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: const [
            CircleAvt(),
            Positioned(
              bottom: 0,
              right: 0,
              child: BorderMessage(),
            ),
          ],
        ),
      ],
    );
  }
}
