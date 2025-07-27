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
      milliseconds: 1000,
    ),
  );

  TextAreaBloc({
    required GenerateAnswerAsStringUseCase generateAnswerAsString,
  })  : _generateAnswerAsString = generateAnswerAsString,
        super(
          TextAreaSuccess(
            content: StringBuffer(),
          ),
        ) {
    on<AddAnswerToTextEvent>(_onAddAnswerToText);
    on<AutoCompleteEvent>(_onAutoComplete);
    on<SuggestAutoCompleteEvent>(_onSuggestAutocomplete);
  }

  Future<void> _onAddAnswerToText(
    AddAnswerToTextEvent event,
    Emitter<TextAreaState> emit,
  ) async {
    if (state is TextAreaSuccess) {
      final TextAreaSuccess currentState = state as TextAreaSuccess;

      final String response = await _generateAnswerAsString.execute(
        GenerateAnswerAsStringPayload(
          model: event.model,
          texts: <String>[
            currentState.content.toString(),
            event.answer,
          ],
        ),
      );

      emit(
        currentState.copyWith(
          content: StringBuffer(response),
        ),
      );
    }
  }

  Future<void> _onAutoComplete(
    AutoCompleteEvent event,
    Emitter<TextAreaState> emit,
  ) async {
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

  Future<void> _onSuggestAutocomplete(
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
}
