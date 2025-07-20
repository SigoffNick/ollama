import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  final Dio _dio;

  ErrorInterceptor(
    this._dio,
  );

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    switch (err.type) {
      case DioExceptionType.cancel:
        break;
      case DioExceptionType.connectionTimeout:
        break;
      case DioExceptionType.receiveTimeout:
        break;
      case DioExceptionType.sendTimeout:
        break;
      case DioExceptionType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
          case 401:
          case 403:
          case 404:
          case 409:
          case 500:
        }
        break;
      case DioExceptionType.connectionError:
        // TODO: Handle this case.
        break;
      case DioExceptionType.badCertificate:
        // TODO: Handle this case.
        break;
      case DioExceptionType.unknown:
        // TODO: Handle this case.
        break;
    }

    final Response<dynamic> response =
        err.response ?? Response<dynamic>(requestOptions: err.requestOptions);
    return handler.resolve(response);
  }
}
