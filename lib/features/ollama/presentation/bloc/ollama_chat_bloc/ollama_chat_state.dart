part of 'ollama_chat_bloc.dart';

@immutable
sealed class OllamaChatState {}

final class OllamaChatInitial extends OllamaChatState {}

final class OllamaChatLoading extends OllamaChatState {}

final class OllamaChatError extends OllamaChatState {
  final String message;

  OllamaChatError({
    required this.message,
  });
}

final class OllamaChatSuccess extends OllamaChatState {
  final OllamaModel model;
  final List<Message> messages;

  OllamaChatSuccess({
    required this.model,
    required this.messages,
  });

  OllamaChatSuccess copyWith({
    OllamaModel? model,
    List<Message>? messages,
  }) {
    return OllamaChatSuccess(
      model: model ?? this.model,
      messages: messages ?? this.messages,
    );
  }
}
