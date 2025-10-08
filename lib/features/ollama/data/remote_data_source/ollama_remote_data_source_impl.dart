import 'dart:async';

import 'package:dio/dio.dart';

import '../../../../core/network/api_provider.dart';
import '../../../../core/network/api_request.dart';
import '../../../../core/services/env.dart';
import '../model/export_models.dart';
import '../request/requests_export.dart';
import 'ollama_remote_data_source.dart';

class OllamaRemoteDataSourceImpl implements OlamaRemoteDataSource {
  final ApiProvider _apiProvider;

  const OllamaRemoteDataSourceImpl({
    required ApiProvider apiProvider,
  })  : _apiProvider = apiProvider;

  @override
  Future<Stream> generateAnswerAsStream({
    required GenerateAnswerRequest request,
  }) async {
    return _apiProvider.post(
      ApiRequest(
        endpoint: '${Env.baseUrl}/api/generate',
        body: request.toJson(),
        params: null,
      ),
      responseType: ResponseType.stream,
      parser: (ResponseBody response) {
        return response.stream;
      },
    );
  }

  @override
  Future<OllamaFullAnswerModel> generateAnswerAsString({
    required GenerateAnswerRequest request,
  }) {
    return _apiProvider.post(
      ApiRequest(
        endpoint: '${Env.baseUrl}/api/generate',
        body: request.toJson(),
        params: null,
      ),
      parser: (Map<String, dynamic> response) {
        return OllamaFullAnswerModel.fromJson(response);
      },
    );
  }
}
