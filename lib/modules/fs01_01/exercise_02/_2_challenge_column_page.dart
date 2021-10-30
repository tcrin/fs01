import 'package:flutter/material.dart';

class ChallengeColumn extends StatelessWidget {
  const ChallengeColumn({Key? key}) : super(key: key);

  Widget createRow() => Flexible(
        flex: 9,
        child: Container(
          color: Colors.teal,
        ),
      );

  Widget createSpace() => const Expanded(
        flex: 1,
        child: SizedBox(),
      );

  List<Widget> createListRow(int numberRow) {
    var listRow = List<Widget>.empty(growable: true);
    for (int i = 0; i < numberRow; i++) {
      listRow.add(
        createRow(),
      );
      if (i < numberRow - 1) {
        listRow.add(
          createSpace(),
        );
      }
    }
    return listRow;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: createListRow(6),
      ),
    );
  }
}
