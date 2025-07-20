import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/enum/export_enums.dart';
import '../../domain/payload/export_payloads.dart';
import '../../domain/use_case/export_use_cases.dart';

part 'ollama_event.dart';

part 'ollama_state.dart';

class OllamaBloc extends Bloc<OllamaEvent, OllamaState> {
  final GenerateAnswerUseCase _generateAnswerUseCase;

  OllamaBloc({
    required GenerateAnswerUseCase generateAnswerUseCase,
  })  : _generateAnswerUseCase = generateAnswerUseCase,
        super(
          OllamaSuccess(
            model: OllamaModel.llama3dot1latest,
          ),
        ) {
    on<GenerateAnswerEvent>(_onGenerateAnswer);
    on<SelectModelEvent>(_onSelectModel);
  }

  FutureOr<void> _onGenerateAnswer(
    GenerateAnswerEvent event,
    Emitter<OllamaState> emit,
  ) async {
    if (state is OllamaSuccess) {
      final OllamaSuccess currentState = state as OllamaSuccess;
      try {
        await _generateAnswerUseCase.execute(
          GenerateAnswerPayload(
            prompt: event.question,
            model: currentState.model,
          ),
        );
      } catch (e) {
        print(1);
      }
    }
  }

  FutureOr<void> _onSelectModel(
    SelectModelEvent event,
    Emitter<OllamaState> emit,
  ) {
    if (state is OllamaSuccess) {
      final OllamaSuccess currentState = state as OllamaSuccess;
      emit(
        currentState.copyWith(
          model: event.model,
        ),
      );
    }
  }
}
