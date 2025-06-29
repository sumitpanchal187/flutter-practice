import 'package:get/get.dart';
import 'package:practice_flutter/splash_screen.dart';
import 'package:practice_flutter/tab/add_screen.dart';
import 'package:practice_flutter/tab/favorite_tab.dart';
import 'package:practice_flutter/tab/home_screen.dart';
import 'package:practice_flutter/tab/profile_tab.dart';
import 'package:practice_flutter/tab/search_tab.dart';
import 'package:practice_flutter/utills/dashboard_screen.dart';
import 'package:practice_flutter/utills/product_detail_screen.dart';

import 'controller/controller_binding.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String favorite = '/favorite';
  static const String profile = '/profile';
  static const String search = '/search';
  static const String add = '/add';
  static const String dashboard = '/dashboard';
  static const String productDetail = '/productDetail';

  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: favorite, page: () => const FavoriteTab()),
    GetPage(name: profile, page: () => const ProfileTab()),
    GetPage(name: search, page: () => const SearchTab()),
    GetPage(name: add, page: () => const AddTab()),
    GetPage(
        name: dashboard,
        page: () => const DashboardScreen(),
        binding: DashboardBinding()),
    GetPage(name: productDetail, page: () => const ProductDetailScreen()),
  ];
}
