import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_01/session_01_page.dart';
import 'package:fs01/modules/fs01_02/session_02_page.dart';
import 'package:fs01/common/widgets/stateless/button/app_button.dart';
import 'package:fs01/modules/fs01_03/social_app/_23_message_list/_23_message_list.dart';
import 'package:fs01/modules/fs01_04/session_04_page.dart';
import 'package:fs01/modules/fs01_05/pages/list_posts_page.dart';
import 'package:fs01/modules/fs_07/welcome_page.dart';

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
                  builder: (_) => const Session04(),
                ),
              );
            },
            label: 'Session 04',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ListPostsPage(),
                ),
              );
            },
            label: 'Session 05',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const WelcomePage(),
                ),
              );
            },
            label: 'Welcome',
          ),
        ],
      ),
    );
  }
}
