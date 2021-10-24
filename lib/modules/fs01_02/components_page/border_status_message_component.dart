import 'package:flutter/material.dart';
import 'package:fs01/widgets/border_circle_status.dart';
import 'package:fs01/widgets/status_message.dart';

class BorderMessage extends StatelessWidget {
  const BorderMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: const [
            StatusMessage(count: 3,),
            BorderCircleStatus(),
          ],
        )
      ],
    );
  }
}
