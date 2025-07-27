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

class AutoCompleteEvent extends TextAreaEvent {
  final String text;
  final OllamaModel model;

  const AutoCompleteEvent({
    required this.text,
    required this.model,
  });
}

class SuggestAutoCompleteEvent extends TextAreaEvent {
  final String suggestion;

  const SuggestAutoCompleteEvent({
    required this.suggestion,
  });
}
