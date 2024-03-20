import "package:flutter/material.dart";

import 'package:sample_project/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Roll Dice(1st App)"),
        ),
        body: const CustomWidgets(
            [Color.fromARGB(255, 40, 4, 103), Color.fromARGB(255, 40, 4, 103)]),
      ),
    ),
  );
}
