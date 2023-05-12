import 'package:flutter/material.dart';
import 'package:my_app/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      body: TutorialHome(
         Color.fromARGB(255, 0, 181, 246),
         Color.fromARGB(255, 9, 135, 174),
         Color.fromARGB(255, 2, 64, 92),
        ),
      ),
    ),
  );
}



