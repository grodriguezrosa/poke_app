// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';

import '../../pages/home/home_page.dart';
import '../../pages/splash/splash_page.dart';
import 'routes_name.dart';

class AppRouterProvider {
  
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static NavigatorState get navigate {
    return navigatorKey.currentState!;
  }

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    final page;

    switch (settings.name) {
      case Routes.splash:
        page = CupertinoPageRoute(builder: (_) => const SplashPage());
      break;
      case Routes.pokemonList:
        page = CupertinoPageRoute(builder: (_) => const HomePage());
      break;
      default:
        page = CupertinoPageRoute(builder: (_) => const SplashPage());
      break;
    }

    return page;
  } 
}