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

  Future<T> get<T, V>(
    ApiRequest query, {
    required Parser<T, V> parser,
    Map<String, dynamic>? headers,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      return parser((await _dio.get(
        query.path,
        data: query.getData,
        queryParameters: query.params,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
      ))
          .data as V);
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> post<T, V>(
    ApiRequest query, {
    required Parser<T, V> parser,
    Map<String, dynamic>? headers,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      return parser((await _dio.post(
        query.path,
        data: query.getData,
        queryParameters: query.params,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
      ))
          .data);
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> put<T, V>(
    ApiRequest query, {
    required Parser<T, V> parser,
    Map<String, dynamic>? headers,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      return parser((await _dio.put(
        query.path,
        data: query.getData,
        queryParameters: query.params,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
      ))
          .data as V);
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> patch<T, V>(
    ApiRequest query, {
    required Parser<T, V> parser,
    Map<String, dynamic>? headers,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      return parser((await _dio.patch(
        query.path,
        data: query.getData,
        queryParameters: query.params,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
      ))
          .data as V);
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }

  Future<T> delete<T, V>(
    ApiRequest query, {
    required Parser<T, V> parser,
    Map<String, dynamic>? headers,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      return parser((await _dio.delete(
        query.path,
        data: query.getData,
        queryParameters: query.params,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
      ))
          .data as V);
    } on DioException catch (e) {
      await _errorHandler.handleError(e);
    }
  }
}

typedef Parser<T, V> = T Function(V);
