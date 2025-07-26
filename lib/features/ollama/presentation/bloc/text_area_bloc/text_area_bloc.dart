import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/enum/ollama_model.dart';
import '../../../domain/payload/export_payloads.dart';
import '../../../domain/use_case/export_use_cases.dart';

part 'text_area_event.dart';

part 'text_area_state.dart';

class TextAreaBloc extends Bloc<TextAreaEvent, TextAreaState> {
  final AddAnswerToTextUseCase _addAnswerToTextUseCase;

  TextAreaBloc({
    required AddAnswerToTextUseCase addAnswerToTextUseCase,
  })  : _addAnswerToTextUseCase = addAnswerToTextUseCase,
        super(
          TextAreaSuccess(
            content: StringBuffer('The topic of my article is:'),
          ),
        ) {
    on<AddAnswerToTextEvent>(_onAddAnswerToText);
  }

  Future<void> _onAddAnswerToText(
    AddAnswerToTextEvent event,
    Emitter<TextAreaState> emit,
  ) async {
    if (state is TextAreaSuccess) {
      final TextAreaSuccess currentState = state as TextAreaSuccess;

      final String response = await _addAnswerToTextUseCase.execute(
        AddAnswerToTextPayload(
          model: event.model,
          text: currentState.content.toString(),
          answer: event.answer,
        ),
      );

      emit(
        currentState.copyWith(
          content: StringBuffer(response),
        ),
      );
    }
  }
}
