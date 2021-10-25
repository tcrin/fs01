import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_02/widgets_page/all_widget_page.dart';
import 'package:fs01/widgets/app_button.dart';

import 'components_page/all_component.dart';

class Lesson02 extends StatelessWidget {
  const Lesson02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Lesson 02'),
        ),
        body: ListView(
          children: [
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllWidget(),
                  ),
                );
              },
              label: 'All Widget',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllComponent(),
                  ),
                );
              },
              label: 'All Component',
            ),
          ],
        ));
  }
}
