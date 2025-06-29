import 'package:get/get.dart';
import 'package:practice_flutter/controller/profile_controller.dart';
import 'package:practice_flutter/controller/search_controller.dart';

import 'add_controller.dart';
import 'favorite_controller.dart';
import 'home_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SearchController());
    Get.lazyPut(() => AddController());
    Get.lazyPut(() => FavoriteController());
    Get.lazyPut(() => ProfileController());
  }
}
