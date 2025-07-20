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

  OllamaSuccess({
    required this.model,
  });

  OllamaSuccess copyWith({
    OllamaModel? model,
  }) {
    return OllamaSuccess(
      model: model ?? this.model,
    );
  }
}
