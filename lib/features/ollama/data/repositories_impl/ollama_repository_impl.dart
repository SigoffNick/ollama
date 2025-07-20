import 'dart:convert';

import '../../domain/payload/export_payloads.dart';
import '../../domain/repository/export_repositories.dart';
import '../model/ollama_completion_chunk_model.dart';
import '../remote_data_source/export_remote_data_sources.dart';
import '../request/requests_export.dart';

class OllamaRepositoryImpl implements OllamaRepository {
  final OlamaRemoteDataSource _ollamaRemoteDataSource;

  const OllamaRepositoryImpl({
    required OlamaRemoteDataSource ollamaRemoteDataSource,
  }) : _ollamaRemoteDataSource = ollamaRemoteDataSource;

  @override
  Stream<OllamaCompletionChunkModel> generateAnswer({
    required GenerateAnswerPayload payload,
  }) async* {
    final Stream<dynamic> stream = await _ollamaRemoteDataSource.generateAnswer(
      request: GenerateAnswerRequest(
        prompt: payload.prompt,
        model: payload.model.toString(),
      ),
    );

    await for (final String chunk in stream.transform(utf8.decoder)) {
      final Map<String, dynamic> json = jsonDecode(chunk);
      yield OllamaCompletionChunkModel.fromJson(json);
    }
  }
}
