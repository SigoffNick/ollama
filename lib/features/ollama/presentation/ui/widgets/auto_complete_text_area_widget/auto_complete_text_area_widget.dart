import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/text_area_bloc/text_area_bloc.dart';
import 'auto_complete_span_builder.dart';

class AutoCompleteTextAreaWidget extends StatefulWidget {
  const AutoCompleteTextAreaWidget({super.key});

  @override
  State<AutoCompleteTextAreaWidget> createState() =>
      _AutoCompleteTextAreaWidgetState();
}

class _AutoCompleteTextAreaWidgetState
    extends State<AutoCompleteTextAreaWidget> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final TextAreaState state = context.read<TextAreaBloc>().state;
    if (state is TextAreaSuccess) {
      _textController = TextEditingController(
        text: state.content,
      );
    } else {
      _textController = TextEditingController();
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BlocConsumer<TextAreaBloc, TextAreaState>(
      listener: (BuildContext context, TextAreaState state) {
        if (state is TextAreaSuccess && state.autoComplete != null) {
          final String autoComplete = state.autoComplete!;
          _textController.text = _textController.text + autoComplete;
          _textController.selection = TextSelection.fromPosition(
            TextPosition(
              offset: _textController.text.length - autoComplete.length,
            ),
          );
        } else if (state is TextAreaSuccess &&
            _textController.text != state.content) {
          _textController.text = state.content;
        }
      },
      builder: (BuildContext context, TextAreaState state) {
        return ExtendedTextField(
          controller: _textController,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          specialTextSpanBuilder: AutoCompleteSpanBuilder(
            autoComplete: state is TextAreaSuccess ? state.autoComplete : null,
            colorScheme: colorScheme,
          ),
          decoration: InputDecoration(
            hintText: 'Input your requirements here...',
            filled: true,
            fillColor: colorScheme.surfaceContainer,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide.none,
            ),
          ),
        );
      },
    );
  }
}
