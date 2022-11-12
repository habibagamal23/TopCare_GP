import 'package:flutter/material.dart';

import '../../presention/screen_view/onboarding/onboarding.dart';
import '../../presention/screen_view/splash/splash.dart';
// this class  To move from page to page

class RouteGenerator {
  static const String splachRoute = "/Splach";
  static const String onBordingRoute = "OnBording";
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteGenerator.splachRoute:
        return MaterialPageRoute(builder: (_) => Splach());

      case RouteGenerator.onBordingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoarding());

      default:
        // if didn't have any route we dont't sent it  its go to  undefinedRoute
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text("NOT FOUND"),
        ),
      ),
    );
  }
}
