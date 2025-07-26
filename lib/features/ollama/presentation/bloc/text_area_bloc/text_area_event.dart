part of 'text_area_bloc.dart';

@immutable
sealed class TextAreaEvent {
  const TextAreaEvent();
}

class AddAnswerToTextEvent extends TextAreaEvent {
  final String answer;
  final OllamaModel model;

  const AddAnswerToTextEvent({
    required this.answer,
    required this.model,
  });
}
