import 'package:dio/dio.dart';

/// ApiService class [dio]
class ApiService {
  final Dio _dio = Dio();

  Future<dynamic> getProductData(String url) async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }
}