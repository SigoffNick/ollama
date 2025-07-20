import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/enum/export_enums.dart';
import '../../data/model/ollama_completion_chunk_model.dart';
import '../../domain/entity/message.dart';
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
            messages: <Message>[],
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

      emit(
        currentState.copyWith(
          messages: List<Message>.from(currentState.messages)
            ..add(
              UserMessage(
                content: StringBuffer(event.question),
              ),
            ),
        ),
      );

      try {
        final Stream<OllamaCompletionChunkModel> messageStream =
            await _generateAnswerUseCase.execute(
          GenerateAnswerPayload(
            prompt: event.question,
            model: currentState.model,
          ),
        );

        final OllamaSuccess newState = state as OllamaSuccess;

        newState.messages.add(
          AssistantMessage(
            content: StringBuffer(),
          ),
        );

        await emit.onEach(messageStream,
            onData: (OllamaCompletionChunkModel message) {
          newState.messages.last.content.write(message.response ?? '');
          emit(
            OllamaSuccess(
              model: newState.model,
              messages: newState.messages,
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
