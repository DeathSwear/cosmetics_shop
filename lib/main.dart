import 'dart:async';
import 'package:cosmetics_shop/features/catalog_page/screens/catalog_screen.dart';
import 'package:cosmetics_shop/features/main_page/screens/main_screen.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/navigation_provider.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/pair.dart';
import 'package:cosmetics_shop/features/navigation/data/constants/route_strings.dart';
import 'package:cosmetics_shop/features/navigation/widgets/scaffold_nav_bar.dart';
import 'package:cosmetics_shop/theme/app_strings.dart';
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
        Pair(const MainScreen(), Routestrings.mainScreen),
        Pair(const CatalogScreen(), Routestrings.catalogScreen),
        Pair(
            const Text(AppStrings.navBarShopping), Routestrings.shoppingScreen),
        Pair(const Text(AppStrings.navBarProfile), Routestrings.profileScreen),
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
