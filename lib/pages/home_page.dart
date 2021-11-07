import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_01/session_01_page.dart';
import 'package:fs01/modules/fs01_02/session_02_page.dart';
import 'package:fs01/common/widgets/stateless/button/app_button.dart';
import 'package:fs01/modules/fs01_03/social_app/_23_message_list/_23_message_list.dart';
import 'package:fs01/modules/fs01_04/exercise_01/download_image_dio.dart';


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
            label: 'Session 01',
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
            label: 'Session 02',
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
            label: 'Session 03',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const DownloadImage(),
                ),
              );
            },
            label: 'Session 04',
          ),
        ],
      ),
    );
  }
}
