import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_case/export_use_cases.dart';

part 'ollama_response_event.dart';

part 'ollama_response_state.dart';

class OllamaResponseBloc
    extends Bloc<OllamaResponseEvent, OllamaResponseState> {
  final GenerateAnswerAsStringUseCase _generateAnswerAsString;

  OllamaResponseBloc({
    required GenerateAnswerAsStringUseCase generateAnswerAsString,
  })  : _generateAnswerAsString = generateAnswerAsString,
        super(OllamaResponseInitial()) {
    on<OllamaResponseEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
