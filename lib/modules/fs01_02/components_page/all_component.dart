import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/components_page/border_status_message_component.dart';
import 'package:fs01/modules/fs01_02/components_page/message_component.dart';
import 'package:fs01/modules/fs01_02/widgets_page/circle_avatar_page.dart';
import 'package:fs01/modules/fs01_02/widgets_page/status_active_page.dart';
import 'package:fs01/modules/fs01_02/widgets_page/status_message_page.dart';
import 'package:fs01/widgets/app_button.dart';
import 'package:fs01/widgets/border_circle_status.dart';

import 'avatar_message_component.dart';
import 'border_status_active_component.dart';



class AllComponent extends StatelessWidget {
  const AllComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('All Component'),
        ),
        body: ListView(
          children: [
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BorderMessage(),),
                );
              },
              label: '1. Border message',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BorderActive(),),
                );
              },
              label: '2. Border active',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AvatarMessage(),),
                );
              },
              label: '3. Avatar message',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MessageComponent(),),
                );
              },
              label: '4. Message',
            ),
          ],
        ));
  }
}
