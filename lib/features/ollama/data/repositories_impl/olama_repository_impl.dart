import 'package:ollama/features/ollama/data/request/generate_answer_request.dart';
import 'package:ollama/features/ollama/domain/payload/generate_answer_payload.dart';

import '../../domain/repository/export_repositories.dart';
import '../remote_data_source/export_remote_data_sources.dart';

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
