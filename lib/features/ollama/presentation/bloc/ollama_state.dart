part of 'ollama_bloc.dart';

@immutable
sealed class OllamaState {}

final class OllamaInitial extends OllamaState {}

final class OllamaLoading extends OllamaState {}

final class OllamaError extends OllamaState {
  final String message;

  OllamaError({
    required this.message,
  });
}

final class OllamaSuccess extends OllamaState {
  final OllamaModel model;
  final List<Message> messages;

  OllamaSuccess({
    required this.model,
    required this.messages,
  });

  OllamaSuccess copyWith({
    OllamaModel? model,
    List<Message>? messages,
  }) {
    return OllamaSuccess(
      model: model ?? this.model,
      messages: messages ?? this.messages,
    );
  }
}
