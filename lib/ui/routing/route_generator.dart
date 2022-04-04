import 'package:demo/ui/routing/route.dart';
import 'package:demo/ui/views/card_list_view.dart';
import 'package:demo/ui/views/home_page.dart';
import 'package:demo/ui/views/single_card_view.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? onGenerateRoute(RouteSettings routeSettings) {
    if (routeSettings.name == "/") {
      return _getPageRoute(const MyHomePage(), routeSettings);
    }
    if (routeSettings.name == Routes.singleCardViewRoute) {
      if (routeSettings.arguments != null &&
          routeSettings.arguments is String) {
        return _getPageRoute(
          SingleCardView(text: routeSettings.arguments as String),
          routeSettings,
        );
      }
    }

    if (routeSettings.name == Routes.cardListViewRoute) {
      return _getPageRoute(const CardListView(), routeSettings);
    }
  }

  static MaterialPageRoute? _getPageRoute(
    Widget child, [
    RouteSettings routeSettings = const RouteSettings(),
  ]) {
    return MaterialPageRoute(
      builder: (_) => child,
      settings: routeSettings,
    );
  }
}
