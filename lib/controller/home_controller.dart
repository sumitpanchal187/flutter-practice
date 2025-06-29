import 'package:get/get.dart';

import '../model/response/product_list_response.dart';
import '../repository/HomeRepository.dart';

class HomeController extends GetxController {
  HomeRepository homeRepository = HomeRepository();
  var posts = <ProductListResponse>[].obs;
  var isLoading = false.obs;
  var error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadPosts();
  }

  void loadPosts() async {
    try {
      isLoading(true);
      final response = await homeRepository.fetchPosts();
      posts.assignAll(response);

      print("Posts loaded successfully: ${posts.length} items");
    } catch (e) {
      error(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
