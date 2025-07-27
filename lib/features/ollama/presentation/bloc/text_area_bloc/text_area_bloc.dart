import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/enum/export_enums.dart';
import '../../../../../core/services/debouncer.dart';
import '../../../domain/payload/export_payloads.dart';
import '../../../domain/use_case/export_use_cases.dart';

part 'text_area_event.dart';

part 'text_area_state.dart';

class TextAreaBloc extends Bloc<TextAreaEvent, TextAreaState> {
  final GenerateAnswerAsStringUseCase _generateAnswerAsString;
  final Debouncer debouncer = Debouncer(
    delay: const Duration(
      milliseconds: 2000,
    ),
  );

  TextAreaBloc({
    required GenerateAnswerAsStringUseCase generateAnswerAsString,
  })  : _generateAnswerAsString = generateAnswerAsString,
        super(
          TextAreaSuccess(
            content: '',
          ),
        ) {
    on<AddAnswerToTextEvent>(_onAddAnswerToText);
    on<ContentChangeEvent>(_onContentChange);
    on<SuggestAutoCompleteEvent>(_onSuggestAutocomplete);
    on<AddAutoCompleteToContentEvent>(_onAddAutoCompleteToContent);
  }

  FutureOr<void> _onAddAnswerToText(
    AddAnswerToTextEvent event,
    Emitter<TextAreaState> emit,
  ) async {
    if (state is TextAreaSuccess) {
      final TextAreaSuccess currentState = state as TextAreaSuccess;

      final String response = await _generateAnswerAsString.execute(
        GenerateAnswerAsStringPayload(
          model: event.model,
          texts: <String>[
            currentState.content,
            event.answer,
          ],
        ),
      );

      emit(
        currentState.copyWith(
          content: response,
        ),
      );
    }
  }

  FutureOr<void> _onContentChange(
    ContentChangeEvent event,
    Emitter<TextAreaState> emit,
  ) async {
    if (state is TextAreaSuccess) {
      final TextAreaSuccess currentState = state as TextAreaSuccess;
      String finalContent = event.text;
      if (currentState.autoComplete != null) {
        finalContent = finalContent.substring(
          0,
          finalContent.length - currentState.autoComplete!.length,
        );
      }
      emit(
        currentState.copyWith(
          content: finalContent,
        ),
      );
    }
    debouncer.run(
      () async {
        final String autoComplete = await _generateAnswerAsString.execute(
          GenerateAnswerAsStringPayload(
            model: event.model,
            texts: <String>[
              event.text,
            ],
            prompt: OllamaTextPrompt.complete,
          ),
        );

        add(
          SuggestAutoCompleteEvent(suggestion: autoComplete),
        );
      },
    );
  }

  FutureOr<void> _onSuggestAutocomplete(
    SuggestAutoCompleteEvent event,
    Emitter<TextAreaState> emit,
  ) async {
    if (state is TextAreaSuccess) {
      final TextAreaSuccess currentState = state as TextAreaSuccess;

      emit(
        currentState.copyWith(
          autoComplete: event.suggestion,
        ),
      );
    }
  }

  FutureOr<void> _onAddAutoCompleteToContent(
    AddAutoCompleteToContentEvent event,
    Emitter<TextAreaState> emit,
  ) async {
    if (state is TextAreaSuccess) {
      final TextAreaSuccess currentSuccessState = state as TextAreaSuccess;

      emit(
        currentSuccessState.copyWith(
          content:
              currentSuccessState.content + currentSuccessState.autoComplete!,
        ),
      );
    }
  }
}
