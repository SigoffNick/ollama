import '../../../../core/enum/export_enums.dart';

class GenerateAnswerAsStreamPayload {
  final String prompt;
  final OllamaModel model;

  GenerateAnswerAsStreamPayload({
    required this.prompt,
    required this.model,
  });
}
