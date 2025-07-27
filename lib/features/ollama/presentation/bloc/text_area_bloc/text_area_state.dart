part of 'text_area_bloc.dart';

@immutable
sealed class TextAreaState {}

final class TextAreaLoading extends TextAreaState {}

final class TextAreaError extends TextAreaState {
  final String message;

  TextAreaError({
    required this.message,
  });
}

final class TextAreaSuccess extends TextAreaState {
  final StringBuffer content;
  final String? autoComplete;

  TextAreaSuccess({
    required this.content,
    this.autoComplete,
  });

  TextAreaSuccess copyWith({
    StringBuffer? content,
    String? autoComplete,
  }) {
    return TextAreaSuccess(
      content: content ?? this.content,
      autoComplete: autoComplete ?? this.autoComplete,
    );
  }
}
