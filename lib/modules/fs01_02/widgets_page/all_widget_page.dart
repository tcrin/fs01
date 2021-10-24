import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/widgets_page/border_circle_page.dart';
import 'package:fs01/modules/fs01_02/widgets_page/circle_avatar_page.dart';
import 'package:fs01/modules/fs01_02/widgets_page/status_active_page.dart';
import 'package:fs01/modules/fs01_02/widgets_page/status_message_page.dart';
import 'package:fs01/widgets/app_button.dart';
import 'package:fs01/widgets/status_message.dart';


class AllWidget extends StatelessWidget {
  const AllWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('All Widget'),
        ),
        body: ListView(
          children: [
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StatusMessagePage()),
                );
              },
              lable: '1. Status message',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StatusActivePage()),
                );
              },
              lable: '2. Status active',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BorderPage()),
                );
              },
              lable: '3. Circle border',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CircleAvatarPage()),
                );
              },
              lable: '4. Circle Avatar',
            ),
          ],
        ));
  }
}
