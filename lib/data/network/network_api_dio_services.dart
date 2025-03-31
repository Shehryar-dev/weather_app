import 'package:weather_app/core/constants/screen_path.dart';

class NetworkApiService implements BaseApiServices {
  final Dio _dio = Dio(BaseOptions(
    connectTimeout: Duration(seconds: 50),
    receiveTimeout: Duration(seconds: 50),
  ));

  NetworkApiService() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }

  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await _dio.get(url);
      return HelperFunctions.returnDioResponse(response);
    } on DioException catch (e) {
      throw HelperFunctions.handleDioError(e);
    }
  }

  @override
  Future<dynamic> postApi(String url, dynamic data) async {
    try {
      final response = await _dio.post(url, data: data);
      return HelperFunctions.returnDioResponse(response);
    } on DioException catch (e) {
      throw HelperFunctions.handleDioError(e);
    }
  }

  @override
  Future<dynamic> deleteApi(String url) async {
    try {
      final response = await _dio.delete(url);
      return HelperFunctions.returnDioResponse(response);
    } on DioException catch (e) {
      throw HelperFunctions.handleDioError(e);
    }
  }


  @override
  Future<dynamic> updateApi(String url, dynamic data) async {
    try {
      final response = await _dio.put(url, data: data);
      return HelperFunctions.returnDioResponse(response);
    } on DioException catch (e) {
      throw HelperFunctions.handleDioError(e);
    }
  }
}
