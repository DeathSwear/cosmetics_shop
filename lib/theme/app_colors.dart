import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor = Color.fromRGBO(242, 242, 242, 1);
  static const Color white05Color = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color blackColor = Color.fromARGB(255, 0, 0, 0);
  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);
  static const Color black25Color = Color.fromARGB(76, 0, 0, 0);
  static const Color black80Color = Color.fromRGBO(0, 0, 0, 0.8);

  static const LinearGradient purpleGradient = LinearGradient(colors: [
    Color.fromRGBO(150, 124, 253, 1),
    Color.fromRGBO(83, 45, 106, 1),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
}
