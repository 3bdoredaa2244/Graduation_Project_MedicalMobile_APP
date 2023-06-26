import 'package:dio/dio.dart';

class DioHelper
{
  static Dio dio=Dio();
  static init(){
    dio=Dio(
       BaseOptions(
      baseUrl: 'https://localhost:7175/swagger/',
      receiveDataWhenStatusError: true,
    ),);
  }


  static Future<Response> getData({
    required url,

  }) async {
      return await dio.get(url);
  }


  static Future<Response> postData({
    required url,
  })async {
    return await dio.post(url);
  }
}