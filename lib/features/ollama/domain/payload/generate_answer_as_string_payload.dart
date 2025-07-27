import '../../../../core/enum/export_enums.dart';

class GenerateAnswerAsStringPayload {
  final List<String> texts;
  final OllamaTextPrompt prompt;
  final OllamaModel model;

  GenerateAnswerAsStringPayload({
    required this.texts,
    required this.model,
    this.prompt = OllamaTextPrompt.combine,
  });
}
