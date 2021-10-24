import 'package:flutter/material.dart';

class ChallengeGirdView extends StatelessWidget {
  const ChallengeGirdView({Key? key}) : super(key: key);

  Widget createRectangle() => Flexible(
      flex: 9,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.teal, borderRadius: BorderRadius.circular(10)),
      ));

  Widget createSpace() => const Expanded(flex: 1, child: SizedBox());

  List<Widget> createListRectangle(int numberRectangle) {
    var listRectangle = List<Widget>.empty(growable: true);
    for (int i = 0; i < numberRectangle; i++) {
      listRectangle.add(createRectangle());
      if (i < numberRectangle - 1) {
        listRectangle.add(createSpace());
      }
    }
    return listRectangle;
  }

  Widget addRectangle(int numberRectangle) => Flexible(
      flex: 9,
      child: Row(
        children: createListRectangle(numberRectangle),
      ));

  List<Widget> createListGirdView(int numberRow, int numberRectangle) {
    var listGirdView = List<Widget>.empty(growable: true);
    for (int i = 0; i < numberRow; i++) {
      listGirdView.add(addRectangle(numberRectangle));
      if (i < numberRow - 1) {
        listGirdView.add(createSpace());
      }
    }
    return listGirdView;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: createListGirdView(8, 4)),
    );
  }
}
