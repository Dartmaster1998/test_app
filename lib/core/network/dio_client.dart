import 'package:dio/dio.dart';

class DioServise {
  late Dio dio;

  DioServise() {
    dio = Dio(
      BaseOptions(
        baseUrl: "http://api.weatherapi.com/v1/current.json",

        connectTimeout: Duration(seconds: 120),
        receiveTimeout: Duration(seconds: 60),
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('Request: ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('Response: ${response.statusCode} ${response.data}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          print('Error: ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }
   Future<Response> get(String endpoint) async {
    try {
      return await dio.get(endpoint);
    } catch (e) {
      rethrow;
    }
  }
   Future<Response> post(String endpoint, dynamic data) async {
    try {
      return await dio.post(endpoint, data: data);
    } catch (e) {
      rethrow;
    }
  }
  Future<Response> patch(String endpoint, dynamic data) async {
    try {
      return await dio.patch(endpoint, data: data);
    } catch (e) {
      rethrow;
    }
  }
}
