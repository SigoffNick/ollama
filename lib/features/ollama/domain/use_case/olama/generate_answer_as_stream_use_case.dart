import '../../../data/model/ollama_completion_chunk_model.dart';
import '../../payload/export_payloads.dart';
import '../../repository/export_repositories.dart';
import '../use_case.dart';

class GenerateAnswerAsStreamUseCase
    implements
        FutureUseCase<GenerateAnswerAsStreamPayload,
            Stream<OllamaCompletionChunkModel>> {
  final OllamaRepository _olamaRepository;

  GenerateAnswerAsStreamUseCase({
    required OllamaRepository olamaRepository,
  }) : _olamaRepository = olamaRepository;

  @override
  Future<Stream<OllamaCompletionChunkModel>> execute(
      GenerateAnswerAsStreamPayload input) {
    return _olamaRepository.generateAnswerAsStream(
      payload: input,
    );
  }
}
