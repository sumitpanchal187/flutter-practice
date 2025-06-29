import '../model/response/product_list_response.dart';
import '../network/api_service.dart';

class HomeRepository {
  final ApiService apiService = ApiService();

  Future<List<ProductListResponse>> fetchPosts() async {
    final data = await apiService.getPosts('products');
    return data
        .map<ProductListResponse>((item) => ProductListResponse.fromJson(item))
        .toList();
  }
}
