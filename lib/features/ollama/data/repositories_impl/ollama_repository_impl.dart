import 'dart:async';
import 'dart:convert';

import '../../domain/payload/export_payloads.dart';
import '../../domain/repository/export_repositories.dart';
import '../model/ollama_completion_chunk_model.dart';
import '../model/ollama_full_answer_model.dart';
import '../remote_data_source/export_remote_data_sources.dart';
import '../request/requests_export.dart';

class OllamaRepositoryImpl implements OllamaRepository {
  final OlamaRemoteDataSource _ollamaRemoteDataSource;

  const OllamaRepositoryImpl({
    required OlamaRemoteDataSource ollamaRemoteDataSource,
  }) : _ollamaRemoteDataSource = ollamaRemoteDataSource;

  @override
  Future<Stream<OllamaCompletionChunkModel>> generateAnswerAsStream({
    required GenerateAnswerAsStreamPayload payload,
  }) async {
    final Stream<dynamic> stream =
        await _ollamaRemoteDataSource.generateAnswerAsStream(
      request: GenerateAnswerRequest(
        prompt: payload.prompt,
        model: payload.model.toString(),
      ),
    );

    return stream.asyncExpand(
      (dynamic data) async* {
        final String chunk = utf8.decode(data);
        final Map<String, dynamic> json = jsonDecode(chunk);
        yield OllamaCompletionChunkModel.fromJson(json);
      },
    );
  }

  @override
  Future<String> generateAnswerAsString({
    required GenerateAnswerAsStringPayload payload,
  }) async {
    final OllamaFullAnswerModel response =
        await _ollamaRemoteDataSource.generateAnswerAsString(
      request: GenerateAnswerRequest(
        prompt: payload.prompt.createPrompt(
          texts: payload.texts,
        ),
        model: payload.model.toString(),
        stream: false,
      ),
    );
    return response.response;
  }
}
