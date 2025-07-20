import 'package:ollama/core/app_config/app_config.dart';
import 'package:ollama/features/ollama/data/request/generate_answer_request.dart';

import '../../../../core/network/api_provider.dart';
import '../../../../core/network/api_request.dart';
import 'olama_remote_data_source.dart';

class OlamaRemoteDataSourceImpl implements OlamaRemoteDataSource {
  final ApiProvider _apiProvider;
  final AppConfig _appConfig;

  const OlamaRemoteDataSourceImpl({
    required ApiProvider apiProvider,
    required AppConfig appConfig,
  })  : _apiProvider = apiProvider,
        _appConfig = appConfig;

  @override
  Future<void> generateAnswer({
    required GenerateAnswerRequest request,
  }) {
    return _apiProvider.get(
      ApiRequest(
        endpoint: '${_appConfig.stgUrl}/generate -d',
        body: <String, dynamic>{},
        params: null,
      ),
      parser: (Map<String, dynamic> json) {
        return;
      },
    );
  }
}
