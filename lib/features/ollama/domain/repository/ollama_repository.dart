import '../../data/model/ollama_completion_chunk_model.dart';
import '../payload/export_payloads.dart';

abstract class OllamaRepository {
  Future<Stream<OllamaCompletionChunkModel>> generateAnswer({
    required GenerateAnswerPayload payload,
  });
}
