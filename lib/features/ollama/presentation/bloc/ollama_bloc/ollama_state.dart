part of 'ollama_bloc.dart';

@immutable
sealed class OllamaState {}

final class OllamaInitial extends OllamaState {}

final class OllamaLoading extends OllamaState {}

final class OllamaError extends OllamaState {
  final String errorMessage;

  OllamaError({
    required this.errorMessage,
  });
}

final class OllamaLoaded extends OllamaState {
  final OllamaResponse ollamaResponse;

  OllamaLoaded({
    required this.ollamaResponse,
  });
}
