import 'package:dio/dio.dart';

class RequestInterceptor extends Interceptor {
  final Dio dio;

  RequestInterceptor(this.dio);

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return handler.next(options);
  }
}
