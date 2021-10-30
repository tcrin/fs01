import 'package:flutter/material.dart';
import 'package:fs01/common/widgets/block_rectangle.dart';

//ChallengeLayout
class Exercise01 extends StatelessWidget {
  const Exercise01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          //Level 1
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: const [
                                Block(
                                  color: Colors.grey,
                                ),
                                Block(
                                  color: Colors.orange,
                                ),
                                Block(
                                  color: Colors.blue,
                                ),
                                Block(
                                  color: Colors.pinkAccent,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                const Block(
                                  flex: 3,
                                  color: Colors.blueAccent,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Block(
                                        color: Colors.green,
                                      ),
                                      Block(
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Block(
                      flex: 3,
                      color: Colors.black,
                    ),
                    const Block(
                      flex: 3,
                      color: Colors.yellow,
                    ),
                    const Block(
                      flex: 3,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const Block(
                flex: 5,
                color: Colors.pink,
                margin: EdgeInsets.only(right: 10),
              ),
              const Block(
                flex: 3,
                color: Colors.pink,
              ),
            ],
          ),
          //Level 2
          Positioned(
            top: size.height * (1 / 2),
            left: size.width * (1 / 9),
            child: Container(
              width: size.width * (1 / 3),
              height: size.width * (1 / 3),
              color: Colors.black.withOpacity(0.5),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
