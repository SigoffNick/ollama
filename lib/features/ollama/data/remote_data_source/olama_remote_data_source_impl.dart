import '../../../../core/app_config/app_config.dart';

import '../../../../core/network/api_provider.dart';
import '../../../../core/network/api_request.dart';
import '../request/requests_export.dart';
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
        endpoint: '${_appConfig.stgUrl}/api/generate',
        body: request.toJson(),
        params: null,
      ),
      parser: (Map<String, dynamic> json) {
        return;
      },
    );
  }
}

// curl http://localhost:11434/api/generate -d '{
// "model": "llama3",
// "prompt": "What is Flutter?"
// }'
