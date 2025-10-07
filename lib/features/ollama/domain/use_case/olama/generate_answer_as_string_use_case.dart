import '../../payload/generate_answer_as_string_payload.dart';
import '../../repository/export_repositories.dart';
import '../use_case.dart';

class GenerateAnswerAsStringUseCase
    implements FutureUseCase<GenerateAnswerAsStringPayload, String> {
  final OllamaRepository _ollamaRepository;

  GenerateAnswerAsStringUseCase({
    required OllamaRepository ollamaRepository,
  }) : _ollamaRepository = ollamaRepository;

  @override
  Future<String> execute(GenerateAnswerAsStringPayload input) {
    return _ollamaRepository.generateAnswerAsString(
      payload: input,
    );
  }
}
