import 'package:flutter/material.dart';
import 'package:fs01/themes/app_colors.dart';
import 'package:fs01/common/widgets/stateless/avatar/circle_avatar.dart';
import 'package:fs01/common/widgets/stateless/status/status_active.dart';
import 'package:fs01/common/widgets/stateless/status/status_message.dart';

class AllWidget extends StatelessWidget {
  const AllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Widget'),
      ),
      body: Container(
        color: AppColor.primaryColor,
        child: ListView(
          children: const [
            SizedBox(
              height: 10,
            ),
            StatusActive(),
            SizedBox(
              height: 10,
            ),
            StatusMessage(
              count: 3,
            ),
            SizedBox(
              height: 10,
            ),
            StatusActive(
              widthBorder: 2,
            ),
            SizedBox(
              height: 10,
            ),
            StatusMessage(
              widthBorder: 1,
              count: 3,
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvt(),
          ],
        ),
      ),
    );
  }
}
