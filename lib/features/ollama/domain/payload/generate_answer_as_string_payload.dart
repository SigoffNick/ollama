import '../../../../core/enum/export_enums.dart';
import '../../../../core/prompt/prompts_export.dart';

class GenerateAnswerAsStringPayload {
  final Promptable prompt;
  final OllamaModel model;

  GenerateAnswerAsStringPayload({
    required this.model,
    required this.prompt,
  });
}
