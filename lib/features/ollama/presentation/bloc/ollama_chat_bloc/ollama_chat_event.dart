part of 'ollama_chat_bloc.dart';

@immutable
sealed class OllamaChatEvent {
  const OllamaChatEvent();
}

class GenerateAnswerEvent extends OllamaChatEvent {
  final String question;

  const GenerateAnswerEvent({
    required this.question,
  });
}
