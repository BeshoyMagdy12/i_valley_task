import 'package:dio/dio.dart';

class DioHealper {
  static late Dio _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.saudinewcar.com:442/AvailableCars/',
        receiveDataWhenStatusError: true,
        headers: {},
      ),
    );
  }

  static Future<Response> postRequest({
    required String endPont,
    Map<String, dynamic>? data,
    String lang = 'ar',
    String? token,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      _dio.options.headers = {'lang': lang, 'authorization': token};
      final response = await _dio.post(endPont,
          data: data, queryParameters: queryParameters);
      return response;
    } catch (e) {
      print('Error: $e');
      throw e;
    }
  }
}
