import 'package:flutter/material.dart';

class NavigationHandler {
  NavigationHandler._();

  static NavigationHandler instance = NavigationHandler._();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }
}
