import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/enum/export_enums.dart';
import '../../../../../core/ollama/ollama_export.dart';
import '../../../../../core/prompt/prompts_export.dart';
import '../../../domain/payload/export_payloads.dart';
import '../../../domain/use_case/export_use_cases.dart';

part 'ollama_event.dart';

part 'ollama_state.dart';

class OllamaBloc extends Bloc<OllamaEvent, OllamaState> {
  final GenerateAnswerAsStringUseCase _generateAnswerAsString;

  OllamaBloc({
    required GenerateAnswerAsStringUseCase generateAnswerAsString,
  })  : _generateAnswerAsString = generateAnswerAsString,
        super(OllamaInitial()) {
    on<GenerateAnswerEvent>(_onGenerateAnswer);
  }

  FutureOr<void> _onGenerateAnswer(
    GenerateAnswerEvent event,
    Emitter<OllamaState> emit,
  ) async {
    emit(
      OllamaLoading(),
    );

    try {
      final String ollamaResponse = await _generateAnswerAsString.execute(
        GenerateAnswerAsStringPayload(
          model: event.model,
          prompt: CreateServiceTaskPrompt.fromRequirements(
            requirements: event.requirements,
          ),
        ),
      );

      emit(
        OllamaLoaded(
          ollamaResponse: OllamaResponse.fromString(ollamaResponse),
        ),
      );
    } catch (e) {
      emit(OllamaError(errorMessage: e.toString()));
    }
  }
}
