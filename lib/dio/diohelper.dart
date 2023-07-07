import 'package:dio/dio.dart';

class DioHelper {
  static Dio dio = Dio();
  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://localhost:7175/swagger/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required url,
  }) async {
    dio.options.queryParameters = {};
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization':
          'LkAlozwNUpmVJpTTPnoxkRn5Az4kQj9n496uvRFcoN2Q5o4WtGUbRhayIwpjq6CDOnPMU5',
    };
    return await dio.get(url);
  }

  static Future<Response> postData({
    required url,
    Map<String, dynamic>? data,
  }) async {
    return await dio.post(
      url,
      data: data,
    );
  }
}
