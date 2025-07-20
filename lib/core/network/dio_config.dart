import 'package:dio/dio.dart';

import '../app_config/app_config.dart';
import 'interceptors/error_interceptor.dart';
import 'interceptors/incomplete_data_retry_interceptor.dart';
import 'interceptors/log_interceptor.dart';
import 'interceptors/request_interceptor.dart';
import 'interceptors/response_interceptor.dart';

class DioConfig {
  final AppConfig appConfig;

  final Dio _dio = Dio();

  Dio get dio => _dio;

  DioConfig({
    required this.appConfig,
  }) {
    _dio
      ..options.baseUrl = appConfig.baseUrl
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
