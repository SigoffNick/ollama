import 'dart:async';

import 'package:dio/dio.dart';

class IncompleteDataRetryInterceptor extends Interceptor {
  final Dio dio;

  IncompleteDataRetryInterceptor({required this.dio});

  @override
  Future<void> onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    final String path = response.requestOptions.path;

    if (path.endsWith('/energy/allocated-balance')) {
      return _handleAllocatedBalanceResponse(response, handler);
    }

    return handler.next(response);
  }

  Future<void> _handleAllocatedBalanceResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    if (_isAllocatedBalanceIncomplete(response)) {
      return _retryRequest(response, handler);
    }

    return handler.next(response);
  }

  bool _isAllocatedBalanceIncomplete(Response<dynamic> response) {
    final bool isRetry =
        response.requestOptions.extra['has_been_retried'] ?? false;
    if (isRetry) {
      return false;
    }

    if (response.data is Map<String, dynamic>) {
      final Map<String, dynamic> data = response.data as Map<String, dynamic>;
      if (data['cardDetails'] != null &&
          data['cardDetails']['obfuscatedCardNumber'] == null) {
        return true;
      }
    }

    return false;
  }

  Future<void> _retryRequest(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) async {
    try {
      await Future<void>.delayed(const Duration(milliseconds: 500));

      final RequestOptions options = response.requestOptions;
      options.extra['has_been_retried'] = true;

      final Response<dynamic> newResponse = await dio.fetch(options);

      return handler.resolve(newResponse);
    } on DioException catch (e) {
      return handler.reject(e);
    }
  }
}
