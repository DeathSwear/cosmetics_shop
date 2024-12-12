import 'package:cosmetics_shop/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Expanded(
        child: ListView(
          children: [
            Container(
              height: 360,
              color: Colors.red,
            ),
            Container(
              height: 95 + 25 + 25,
              color: Colors.yellow,
            ),
            Container(
              height: 40,
              color: Colors.green,
            ),
            Container(
              height: 280,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
