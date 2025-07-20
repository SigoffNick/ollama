import '../../payload/export_payloads.dart';
import '../../repository/export_repositories.dart';
import '../use_case.dart';

class GenerateAnswerUseCase
    implements FutureUseCase<GenerateAnswerPayload, void> {
  final OlamaRepository _olamaRepository;

  GenerateAnswerUseCase({
    required OlamaRepository olamaRepository,
  }) : _olamaRepository = olamaRepository;

  @override
  Future<void> execute(GenerateAnswerPayload input) async {
    return _olamaRepository.generateAnswer(
      payload: input,
    );
  }
}
