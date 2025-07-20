import '../../domain/payload/export_payloads.dart';
import '../../domain/repository/export_repositories.dart';
import '../remote_data_source/export_remote_data_sources.dart';
import '../request/requests_export.dart';

class OlamaRepositoryImpl implements OlamaRepository {
  final OlamaRemoteDataSource _olamaRemoteDataSource;

  const OlamaRepositoryImpl({
    required OlamaRemoteDataSource olamaRemoteDataSource,
  }) : _olamaRemoteDataSource = olamaRemoteDataSource;

  @override
  Future<void> generateAnswer({
    required GenerateAnswerPayload payload,
  }) async {
    _olamaRemoteDataSource.generateAnswer(
      request: GenerateAnswerRequest(
        prompt: payload.prompt,
        model: payload.model.toString(),
      ),
    );
  }
}
