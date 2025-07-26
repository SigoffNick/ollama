import '../../payload/add_answer_to_text_payload.dart';
import '../../repository/export_repositories.dart';
import '../use_case.dart';

class AddAnswerToTextUseCase
    implements FutureUseCase<AddAnswerToTextPayload, String> {
  final OllamaRepository _olamaRepository;

  AddAnswerToTextUseCase({
    required OllamaRepository olamaRepository,
  }) : _olamaRepository = olamaRepository;

  @override
  Future<String> execute(AddAnswerToTextPayload input) {
    return _olamaRepository.addAnswerToText(
      payload: input,
    );
  }
}
