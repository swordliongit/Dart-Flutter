import 'package:flutter/material.dart';

import 'package:dice_roller/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colorList: [
            Color.fromARGB(204, 14, 49, 126),
            Color.fromARGB(255, 49, 147, 192),
            Color.fromARGB(199, 8, 18, 160),
          ],
        ),
      ),
    ),
  );
}
