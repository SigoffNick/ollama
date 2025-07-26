import '../../../../core/enum/export_enums.dart';

class AddAnswerToTextPayload {
  final String text;
  final String answer;
  final AddAnswerToTextPrompt prompt;
  final OllamaModel model;

  AddAnswerToTextPayload({
    required this.text,
    required this.answer,
    required this.model,
    this.prompt = AddAnswerToTextPrompt.combine,
  });
}
