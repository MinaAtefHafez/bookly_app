import 'package:dio/dio.dart';

abstract class ApiServices {
  Future<Map<String, dynamic>> get({required String endPoint});
}

class DioHelper implements ApiServices {
  final String _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;
  DioHelper(this._dio);

  @override
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
