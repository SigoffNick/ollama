part of 'ollama_bloc.dart';

@immutable
sealed class OllamaEvent {
  const OllamaEvent();
}

class GenerateAnswerEvent extends OllamaEvent {
  final String question;

  const GenerateAnswerEvent({
    required this.question,
  });
}

class SelectModelEvent extends OllamaEvent {
  final OllamaModel? model;

  const SelectModelEvent({
    required this.model,
  });
}
