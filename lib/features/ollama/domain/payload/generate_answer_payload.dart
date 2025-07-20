import '../../../../core/enum/export_enums.dart';

class GenerateAnswerPayload {
  final String prompt;
  final OllamaModel model;

  GenerateAnswerPayload({
    required this.prompt,
    required this.model,
  });
}
