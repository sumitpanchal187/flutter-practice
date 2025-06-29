import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'https://fakestoreapi.com';

  // GET request
  Future<List<dynamic>> getPosts(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }

  // POST request
  Future<Map<String, dynamic>> postData(
      String endpoint, Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to post data');
    }
  }
}
