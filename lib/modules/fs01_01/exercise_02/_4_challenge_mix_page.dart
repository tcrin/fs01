import 'package:flutter/material.dart';

class ChallengeMix extends StatelessWidget {
  const ChallengeMix({Key? key}) : super(key: key);

  Widget createCol() => Flexible(
        flex: 9,
        child: Container(
          color: Colors.teal,
        ),
      );

  Widget createSpace() => const Expanded(
        flex: 1,
        child: SizedBox(),
      );

  List<Widget> createListCol(int numberCol) {
    var listCol = List<Widget>.empty(growable: true);
    for (int i = 0; i < numberCol; i++) {
      listCol.add(
        createCol(),
      );
      if (i < numberCol - 1) {
        listCol.add(
          createSpace(),
        );
      }
    }
    return listCol;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Row(
              children: createListCol(1),
            ),
          ),
          const SizedBox(height: 15),
          Flexible(
            flex: 1,
            child: Row(
              children: createListCol(3),
            ),
          )
        ],
      ),
    );
  }
}
