import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/enum/export_enums.dart';
import '../../../../core/extension/list_messages_extension.dart';
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
      OllamaSuccess currentState = state as OllamaSuccess;

      emit(
        currentState.copyWith(
          messages: currentState.messages
            ..add(
              UserMessage(
                content: StringBuffer(event.question),
              ),
            ),
        ),
      );

      currentState = state as OllamaSuccess;

      emit(
        currentState.copyWith(
          messages: currentState.messages
            ..add(
              AssistantLoadingMessage(
                content: StringBuffer('Generating answer...'),
              ),
            ),
        ),
      );

      currentState = state as OllamaSuccess;

      try {
        final Stream<OllamaCompletionChunkModel> messageStream =
            await _generateAnswerUseCase.execute(
          GenerateAnswerPayload(
            prompt: event.question,
            model: currentState.model,
          ),
        );

        // Remove the last loading message and add a new assistant message to fill up with the response
        currentState.messages.removeLast();
        currentState.messages.add(
          AssistantMessage(
            content: StringBuffer(),
          ),
        );

        await emit.onEach(messageStream,
            onData: (OllamaCompletionChunkModel message) {
          currentState.messages.last.content.write(message.response ?? '');
          emit(
            OllamaSuccess(
              model: currentState.model,
              messages: currentState.messages,
            ),
          );
        }, onError: (Object error, StackTrace stackTrace) {
          if (currentState.messages.endsWithErrorMessage) {
            return;
          }

          currentState.messages.removeLast();

          currentState.messages.add(
            ErrorMessage(
              content: StringBuffer(error.toString()),
            ),
          );
          emit(
            OllamaSuccess(
              model: currentState.model,
              messages: currentState.messages,
            ),
          );
        });
      } catch (e) {
        currentState.messages.removeAfterLoadingMessage();

        currentState.messages.add(
          ErrorMessage(
            content: StringBuffer(e.toString()),
          ),
        );
        emit(
          OllamaSuccess(
            model: currentState.model,
            messages: currentState.messages,
          ),
        );
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
