import 'dart:async';
import 'package:cosmetics_shop/features/main_page/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runZonedGuarded(() => runApp(const MainApp()), (error, stack) {
    log(error.toString(), name: 'App Error', stackTrace: stack);
  });
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}
