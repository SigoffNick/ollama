import 'dart:async';

import 'package:dio/dio.dart';

import '../../../../core/app_config/app_config.dart';
import '../../../../core/network/api_provider.dart';
import '../../../../core/network/api_request.dart';
import '../request/requests_export.dart';
import 'ollama_remote_data_source.dart';

class OllamaRemoteDataSourceImpl implements OlamaRemoteDataSource {
  final ApiProvider _apiProvider;
  final AppConfig _appConfig;

  const OllamaRemoteDataSourceImpl({
    required ApiProvider apiProvider,
    required AppConfig appConfig,
  })  : _apiProvider = apiProvider,
        _appConfig = appConfig;
  @override
  Future<Stream> generateAnswer({
    required GenerateAnswerRequest request,
  }) async {
    return _apiProvider.post(
      ApiRequest(
        endpoint: '${_appConfig.stgUrl}/api/generate',
        body: request.toJson(),
        params: null,
      ),
      responseType: ResponseType.stream,
      parser: (ResponseBody response) {
        return response.stream;
      },
    );
  }
}
