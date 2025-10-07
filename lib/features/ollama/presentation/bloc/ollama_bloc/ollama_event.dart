part of 'ollama_bloc.dart';

@immutable
sealed class OllamaEvent {
  const OllamaEvent();
}

class GenerateAnswerEvent extends OllamaEvent {
  final String requirements;
  final OllamaModel model;

  const GenerateAnswerEvent({
    required this.requirements,
    this.model = OllamaModel.llama3dot1latest,
  });
}

class CopyContentEvent extends OllamaEvent {
  final String content;

  const CopyContentEvent({
    required this.content,
  });
}
