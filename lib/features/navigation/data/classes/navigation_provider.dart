import 'package:cosmetics_shop/features/navigation/data/classes/my_nav_controller.dart';
import 'package:flutter/material.dart';

class MyNavigationProvider extends InheritedWidget {
  final MyNavController navController;

  const MyNavigationProvider({
    super.key,
    required this.navController,
    required super.child,
  });

  static MyNavigationProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyNavigationProvider>();
  }

  @override
  bool updateShouldNotify(covariant MyNavigationProvider oldWidget) {
    return navController != oldWidget.navController;
  }
}
