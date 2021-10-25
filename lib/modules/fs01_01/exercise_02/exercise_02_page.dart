import 'package:flutter/material.dart';
import 'package:fs01/widgets/app_button.dart';

import '_1_challenge_row_page.dart';
import '_2_challenge_column_page.dart';
import '_3_challenge_girdview_page.dart';
import '_4_challenge_mix_page.dart';

class Exercise02 extends StatelessWidget {
  const Exercise02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Exercise 02'),
        ),
        body: ListView(
          children: [
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChallengeRow()),
                );
              },
              label: '1. Challenge Row',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChallengeColumn()),
                );
              },
              label: '2. Challenge Column',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChallengeGirdView()),
                );
              },
              label: '3. Challenge GirdView',
            ),
            AppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChallengeMix()),
                );
              },
              label: '4. Challenge Mix',
            ),
          ],
        ));
  }
}
