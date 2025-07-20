import '../../../data/model/ollama_completion_chunk_model.dart';
import '../../payload/export_payloads.dart';
import '../../repository/export_repositories.dart';
import '../use_case.dart';

class GenerateAnswerUseCase
    implements
        FutureUseCase<GenerateAnswerPayload,
            Stream<OllamaCompletionChunkModel>> {
  final OllamaRepository _olamaRepository;

  GenerateAnswerUseCase({
    required OllamaRepository olamaRepository,
  }) : _olamaRepository = olamaRepository;

  @override
  Future<Stream<OllamaCompletionChunkModel>> execute(
      GenerateAnswerPayload input) {
    return _olamaRepository.generateAnswer(
      payload: input,
    );
  }
}
