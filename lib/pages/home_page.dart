import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_01/lesson_01_page.dart';
import 'package:fs01/modules/fs01_02/lesson_02_page.dart';
import 'package:fs01/common/widgets/stateless/button/app_button.dart';
import 'package:fs01/modules/fs01_03/social_app/_23_message_list/_23_message_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: const Text(
          'FS01',
        ),
      ),
      body: ListView(
        children: [
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Lesson01(),
                ),
              );
            },
            label: 'Lesson 01',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const Lesson02(),
                ),
              );
            },
            label: 'Lesson 02',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MessageListPage(),
                ),
              );
            },
            label: 'Lesson 03',
          ),
        ],
      ),
    );
  }
}
