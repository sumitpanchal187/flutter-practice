import 'package:flutter/material.dart';
import 'package:practice_flutter/home_page.dart';
import 'package:practice_flutter/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeScreen(),
  };
}
