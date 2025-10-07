import '../../data/model/ollama_completion_chunk_model.dart';
import '../payload/export_payloads.dart';

abstract class OllamaRepository {
  Future<Stream<OllamaCompletionChunkModel>> generateAnswerAsStream({
    required GenerateAnswerAsStreamPayload payload,
  });

  Future<String> generateAnswerAsString({
    required GenerateAnswerAsStringPayload payload,
  });
}
