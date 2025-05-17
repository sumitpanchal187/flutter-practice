import 'package:flutter/material.dart';
import 'package:practice_flutter/splash_screen.dart';
import 'package:practice_flutter/tab/add_screen.dart';
import 'package:practice_flutter/tab/favorite_tab.dart';
import 'package:practice_flutter/tab/home_screen.dart';
import 'package:practice_flutter/tab/profile_tab.dart';
import 'package:practice_flutter/tab/search_tab.dart';
import 'package:practice_flutter/utills/product_detail_screen.dart';

import 'utills/dashboard_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String favorite = '/favorite';
  static const String profile = '/profile';
  static const String search = '/search';
  static const String add = '/add';
  static const String dashboard = '/dashboard';
  static const String productDetail = '/productDetail';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomeScreen(),
    favorite: (context) => const FavoriteTab(),
    profile: (context) => const ProfileTab(),
    search: (context) => const SearchTab(),
    add: (context) => const AddTab(),
    dashboard: (context) => const DashboardScreen(),
    productDetail: (context) => const ProductDetailScreen(),
  };
}
