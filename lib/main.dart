import 'dart:async';
import 'package:cosmetics_shop/features/catalog_page/screens/catalog_screen.dart';
import 'package:cosmetics_shop/features/main_page/screens/main_screen.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/pair.dart';
import 'package:cosmetics_shop/features/navigation/widgets/scaffold_nav_bar.dart';
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
    final MyNavController navigationController = MyNavController(
      routes: [
        Pair(const MainScreen(), '/mainScreen'),
        Pair(const CatalogScreen(), '/catalogScreen'),
        Pair(const Text('d'), '/test2'),
        Pair(const Text('ПРОВЕРКА'), '/test3'),
      ],
    );

    return MyNavigationProvider(
      navController: navigationController,
      child: const MaterialApp(
        home: ScaffoldNavBar(),
      ),
    );
  }
}
