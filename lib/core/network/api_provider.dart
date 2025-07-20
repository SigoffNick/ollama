import 'package:dio/dio.dart';

import '../errors/error_handler.dart';
import 'api_request.dart';

class ApiProvider {
  final Dio _dio;
  final ErrorHandler _errorHandler;

  const ApiProvider({
    required Dio dio,
    required ErrorHandler errorHandler,
  })  : _dio = dio,
        _errorHandler = errorHandler;

  Future<T> get<T>(
    ApiRequest query, {
    required Parser<T> parser,
    Map<String, dynamic>? headers,
    bool isTokenRequired = true,
  }) async {
    try {
      return _safeRequest<T>(
        request: _dio.get(
          query.path,
          queryParameters: query.params,
          options: Options(
            headers: headers,
          ),
        ),
        parser: parser,
      );
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> post<T>(
    ApiRequest query, {
    required Parser<T> parser,
    Map<String, dynamic>? headers,
    bool isTokenRequired = true,
  }) async {
    try {
      return _safeRequest<T>(
        request: _dio.post(
          query.path,
          data: query.getData,
          queryParameters: query.params,
          options: Options(
            headers: headers,
          ),
        ),
        parser: parser,
      );
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> put<T>(
    ApiRequest query, {
    required Parser<T> parser,
    Map<String, dynamic>? headers,
    bool isTokenRequired = true,
  }) async {
    try {
      return _safeRequest<T>(
        request: _dio.put(
          query.path,
          data: query.body,
          queryParameters: query.params,
          options: Options(
            headers: headers,
          ),
        ),
        parser: parser,
      );
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> patch<T>(
    ApiRequest query, {
    required Parser<T> parser,
    Map<String, dynamic>? headers,
    bool isTokenRequired = true,
  }) async {
    try {
      return _safeRequest<T>(
        request: _dio.patch(
          query.path,
          data: query.body,
          queryParameters: query.params,
          options: Options(
            headers: headers,
          ),
        ),
        parser: parser,
      );
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> delete<T>(
    ApiRequest query, {
    required Parser<T> parser,
    Map<String, dynamic>? headers,
    bool isTokenRequired = true,
  }) async {
    try {
      return _safeRequest<T>(
        request: _dio.delete(
          query.path,
          data: query.body,
          queryParameters: query.params,
          options: Options(
            headers: headers,
          ),
        ),
        parser: parser,
      );
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> _safeRequest<T>({
    required Future<Response<dynamic>> request,
    required Parser<T> parser,
  }) async {
    final Response<dynamic> response = await request;
    return parser(response.data);
  }
}

typedef Parser<T> = T Function(Map<String, dynamic>);

typedef ParserArr<T> = T Function(List<dynamic>);
