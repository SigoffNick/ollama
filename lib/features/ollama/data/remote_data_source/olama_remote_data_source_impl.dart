import 'package:ollama/core/app_config/app_config.dart';

import '../../../../core/network/api_provider.dart';
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
  Future<void> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }
}
