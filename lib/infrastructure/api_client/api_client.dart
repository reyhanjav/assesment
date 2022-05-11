import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiClient {
  static const baseUrl = 'https://dog.ceo/api/';
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  Future<Response> get(String endpoint,
      {Map<String, dynamic>? headers,
      CancelToken? cancelToken,
      Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await dio.get(Uri.encodeFull(endpoint),
          options: Options(headers: headers),
          cancelToken: cancelToken,
          queryParameters: queryParameters);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
