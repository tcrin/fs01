import 'package:flutter/material.dart';
import 'package:fs01/values/app_assets.dart';
import 'package:fs01/widgets/border_circle_status.dart';
import 'package:fs01/widgets/circle_avatar.dart';


class BorderPage extends StatelessWidget {
  const BorderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        BorderCircleStatus(),
      ],
    );
  }
}
