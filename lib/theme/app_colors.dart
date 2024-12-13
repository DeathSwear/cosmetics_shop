import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundColor =
      Colors.white; // Color.fromRGBO(242, 242, 242, 1);
  static const Color white05Color = Color.fromRGBO(255, 255, 255, 0.5);
  static const Color blackColor = Color.fromARGB(255, 0, 0, 0);
  static const Color whiteColor = Color.fromARGB(255, 255, 255, 255);
  static const Color black25Color = Color.fromARGB(76, 0, 0, 0);
  static const Color black80Color = Color.fromRGBO(0, 0, 0, 0.8);
  static const Color whiteGray = Color.fromRGBO(244, 244, 244, 1);

  static const LinearGradient greenGradient = LinearGradient(colors: [
    Color.fromRGBO(228, 254, 249, 1),
    Color.fromRGBO(102, 246, 220, 1),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
  static const LinearGradient purpleGradient = LinearGradient(colors: [
    Color.fromRGBO(255, 192, 225, 1),
    Color.fromRGBO(240, 41, 128, 1),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
  static const LinearGradient orangeGradient = LinearGradient(colors: [
    Color.fromRGBO(248, 102, 20, 1),
    Color.fromRGBO(252, 188, 92, 1),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);

  static const mattButtonColor = Color.fromRGBO(43, 43, 43, 1);
}
