import 'package:ollama/features/ollama/domain/payload/export_payloads.dart';
import 'package:ollama/features/ollama/domain/repository/export_repositories.dart';
import 'package:ollama/features/ollama/domain/use_case/use_case.dart';

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
