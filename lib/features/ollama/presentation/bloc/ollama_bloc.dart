import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/enum/export_enums.dart';
import '../../data/model/ollama_completion_chunk_model.dart';
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
            messages: <StringBuffer>[],
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
        final Stream<OllamaCompletionChunkModel> messageStream =
            _generateAnswerUseCase.execute(
          GenerateAnswerPayload(
            prompt: event.question,
            model: currentState.model,
          ),
        );

        if (currentState.messages.isEmpty) {
          currentState.messages.add(StringBuffer());
        }

        await emit.onEach(messageStream,
            onData: (OllamaCompletionChunkModel message) {
          currentState.messages.last.write(message.message?.content ?? '');
          emit(
            OllamaSuccess(
              model: currentState.model,
              messages: currentState.messages,
            ),
          );
        }, onError: (Object error, StackTrace stackTrace) {
          print('Error: $error');
        });
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
