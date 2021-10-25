import 'package:flutter/material.dart';
import 'package:fs01/widgets/border_circle_status.dart';
import 'package:fs01/widgets/status_active.dart';

class BorderActive extends StatelessWidget {
  const BorderActive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: const [
            StatusActive(),
            BorderCircleStatus(
              sizeBorder: 12,
              deep: 2.0,
            ),
          ],
        ),
      ],
    );
  }
}
