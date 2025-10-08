import 'package:dio/dio.dart';

import '../services/env.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/incomplete_data_retry_interceptor.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/request_interceptor.dart';
import 'interceptors/response_interceptor.dart';

class DioConfig {

  final Dio _dio = Dio();

  Dio get dio => _dio;

  DioConfig() {
    _dio
      ..options.baseUrl = Env.baseUrl
      ..interceptors.addAll(
        <Interceptor>[
          RequestInterceptor(_dio),
          IncompleteDataRetryInterceptor(dio: _dio),
          ErrorInterceptor(_dio),
          ResponseInterceptor(_dio),
          const AppLogInterceptor(),
        ],
      );
  }
}
