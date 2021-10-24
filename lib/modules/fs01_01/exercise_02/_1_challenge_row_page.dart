import 'package:flutter/material.dart';

class ChallengeRow extends StatelessWidget {
  const ChallengeRow({Key? key}) : super(key: key);

  Widget createCol() => Flexible(
      flex: 9,
      child: Container(
        color: Colors.teal,
      ));

  Widget createSpace() => const Expanded(flex: 1, child: SizedBox());

  List<Widget> createListCol(int numberCol) {
    var listCol = List<Widget>.empty(growable: true);
    for (int i = 0; i < numberCol; i++) {
      listCol.add(createCol());
      if (i < numberCol - 1) {
        listCol.add(createSpace());
      }
    }
    return listCol;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: createListCol(5),
      ),
    );
  }
}
