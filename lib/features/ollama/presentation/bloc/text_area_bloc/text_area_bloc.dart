import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'text_area_event.dart';

part 'text_area_state.dart';

class TextAreaBloc extends Bloc<TextAreaEvent, TextAreaState> {
  TextAreaBloc()
      : super(TextAreaSuccess(
          content: StringBuffer('The topic of my article is:'),
        )) {
    on<TextAreaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
