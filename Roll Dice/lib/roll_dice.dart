import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<StatefulWidget> createState() {
    return _RollDice();
  }
}

class _RollDice extends State<StatefulWidget> {
  var imagePath = "assets/images/dice-1.png";

  void changeImage() {
    setState(() {
      imagePath = "assets/images/dice-${randomNumber()}.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-${randomNumber()}.png",
          width: 100.0,
        ),
        const SizedBox(height: 30),
        TextButton(
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28)),
            onPressed: changeImage,
            child: const Text("Roll Dice"))
      ],
    );
  }

  int randomNumber() {
    Random random = Random();
    var num = random.nextInt(6) + 1;
    return num;
  }
}
