import "package:flutter/material.dart";
import "package:sample_project/roll_dice.dart";

// class DynamicImage extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Widget();
//   }
// }

class CustomWidgets extends StatelessWidget {
  final List<Color> color;
  const CustomWidgets(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: color,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(child: RollDice()),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  // int x;
  // StyledText(int x) {
  //   this.x = x;
  // }
  @override
  Widget build(context) {
    return const Text(
      "Hello,I am Huzaifa Saeed",
      style: TextStyle(color: Colors.white, fontSize: 30.0),
    );
  }
}
