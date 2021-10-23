import 'package:flutter/material.dart';
import 'package:fs01/pages/fs01_01/lesson_01_page.dart';
import 'package:fs01/widgets/app_button.dart';

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
                MaterialPageRoute(builder: (context) => const Lesson01()),
              );
            },
            lable: 'Lesson 01',
          ),
          AppButton(
            onPressed: () {

            },
            lable: 'Lesson 02',
          ),

        ],
      ),
    );
  }
}
