part of 'ollama_bloc.dart';

@immutable
sealed class OllamaEvent {
  const OllamaEvent();
}

class GenerateAnswerEvent extends OllamaEvent {
  final String question;
  final OllamaModel model;

  const GenerateAnswerEvent({
    required this.question,
    this.model = OllamaModel.llama3dot1latest,
  });
}
