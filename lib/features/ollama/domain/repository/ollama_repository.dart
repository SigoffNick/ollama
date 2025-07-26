import '../../data/model/ollama_completion_chunk_model.dart';
import '../payload/add_answer_to_text_payload.dart';
import '../payload/export_payloads.dart';

abstract class OllamaRepository {
  Future<Stream<OllamaCompletionChunkModel>> generateAnswer({
    required GenerateAnswerPayload payload,
  });

  Future<String> addAnswerToText({
    required AddAnswerToTextPayload payload,
  });
}
