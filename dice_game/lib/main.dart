import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//   const DicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Row(
//           children: [
//             Expanded(
//               child: Container(
//                 child: TextButton(
//                   onPressed: () {
//                     print('Left Button is pressed');
//                   },
//                   child: const Image(
//                     image: AssetImage('images/dice1.png'),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Container(
//                 child: TextButton(
//                   onPressed: () {
//                     print('Right Button is pressed');
//                   },
//                   child: const Image(
//                     image: AssetImage('images/dice2.png'),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 5;
  int rightDiceNo = 4;
  // Creating Function for Random No generator in left and Right Dice
  void RandomDiceGen() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var image;
    var random;
    return Center(
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: TextButton(
                  onPressed: () {
                    RandomDiceGen();
                  },
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNo.png'),
                  ),
                  // child: image.assest('images/dice$leftDiceNo.png'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: TextButton(
                  onPressed: () {
                    RandomDiceGen();
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightDiceNo.png'),
                  ),
                  // child: image.assest('images/dice$rightDiceNo.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
