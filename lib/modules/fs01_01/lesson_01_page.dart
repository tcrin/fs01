import 'package:flutter/material.dart';

import 'package:fs01/widgets/app_button.dart';

import 'exercise_01/exercise_01_page.dart';
import 'exercise_02/exercise_02_page.dart';

class Lesson01 extends StatelessWidget {
  const Lesson01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Lesson 01',
        ),
      ),
      body: ListView(
        children: [
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Exercise01(),
                ),
              );
            },
            label: 'Exercise 01',
          ),
          AppButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Exercise02(),
                ),
              );
            },
            label: 'Exercise 02',
          ),
        ],
      ),
    );
  }
}
