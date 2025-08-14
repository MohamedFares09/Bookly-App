import 'package:dio/dio.dart';

class ApiServices {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiServices(this.dio);
  Future<Map<dynamic, String>> get({required String endPoint}) async {
    final response = await dio.get("$_baseUrl$endPoint");
    return response.data;
  }
}
