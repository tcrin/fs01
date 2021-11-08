import 'package:flutter/material.dart';
import 'package:fs01/common/widgets/stateless/button/app_button.dart';
import 'package:fs01/modules/fs01_04/exercise_01/download_image_dio.dart';
import 'package:fs01/modules/fs01_04/exercise_02/pages/data_categories_page.dart';

class Session04 extends StatelessWidget {
  const Session04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Session 04'),
        ),
        body: ListView(
          children: [
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DownloadImage(),
                  ),
                );
              },
              label: 'Exercise 01 - Download image',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DataCategories(),
                  ),
                );
              },
              label: 'Exercise 02 - fetch Data Categories',
            ),
          ],
        ));
  }
}
