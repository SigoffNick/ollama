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

  TextAreaSuccess({
    required this.content,
  });

  TextAreaSuccess copyWith({
    StringBuffer? content,
  }) {
    return TextAreaSuccess(
      content: content ?? this.content,
    );
  }
}
