import 'package:cosmetics_shop/features/navigation/data/classes/pair.dart';
import 'package:cosmetics_shop/features/navigation/data/classes/stack_for_nav.dart';
import 'package:flutter/material.dart';

class MyNavController {
  MyNavController.unconfigured();
  factory MyNavController({required List<Pair<Widget, String>> routes}) {
    MyNavController temp = MyNavController.unconfigured();
    temp.configure(routes);

    return temp;
  }

  final Map<String, Widget> _allRoutes = {};

  final ValueNotifier<String> currentRouteNotifier = ValueNotifier<String>('');

  int _currentRouteIndex = 0;
  final List<StackForNav<String>> _currentRoutes = [];

  void configure(List<Pair<Widget, String>> routes) {
    for (Pair<Widget, String> i in routes) {
      _allRoutes[i.second] = i.first;
      addPage(route: i.second);
    }
    _currentRouteIndex = 0;
    currentRouteNotifier.value = routes[0].second;
  }

  void addPage({required String route}) {
    StackForNav<String> temp = StackForNav();
    temp.push(route);
    _currentRoutes.add(temp);
  }

  void push({required String route, required Widget page}) {
    if (!_allRoutes.containsKey(route)) {
      _allRoutes[route] = page;
    }
    _currentRoutes[_currentRouteIndex].push(route);
    currentRouteNotifier.value = route;
  }

  void pop() {
    String poppedRoute = getCurrentRoute();
    if (_currentRoutes[_currentRouteIndex].pop()) {
      _allRoutes.remove(poppedRoute);
      currentRouteNotifier.value = getCurrentRoute();
    }
  }

  void goTo({required String route}) {
    for (int i = 0; i < _currentRoutes.length; i++) {
      if (route == _currentRoutes[i].getMain()) {
        _currentRouteIndex = i;
        currentRouteNotifier.value = route;
        return;
      }
    }
    addPage(route: route);
    goTo(route: route);
  }

  String getCurrentRoute() {
    return _currentRoutes[_currentRouteIndex].peak();
  }

  int getCurrentIndex() {
    return _currentRouteIndex;
  }

  Widget getCurrentPage() {
    String currentRoute = getCurrentRoute();
    return _allRoutes[currentRoute]!;
  }
}
