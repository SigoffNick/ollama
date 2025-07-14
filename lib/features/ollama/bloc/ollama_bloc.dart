import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ollama_event.dart';
part 'ollama_state.dart';

class OllamaBloc extends Bloc<OllamaEvent, OllamaState> {
  OllamaBloc() : super(OllamaInitial()) {
    on<OllamaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
