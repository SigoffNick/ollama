import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/ollama_chat_bloc/ollama_chat_bloc.dart';
import '../../../bloc/text_area_bloc/text_area_bloc.dart';

class TextAreaWidget extends StatefulWidget {
  const TextAreaWidget({super.key});

  @override
  State<TextAreaWidget> createState() => _TextAreaWidgetState();
}

class _TextAreaWidgetState extends State<TextAreaWidget> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final TextAreaState state = context.read<TextAreaBloc>().state;
    if (state is TextAreaSuccess) {
      _textController = TextEditingController(
        text: state.content.toString(),
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

    return BlocBuilder<TextAreaBloc, TextAreaState>(
      builder: (BuildContext context, TextAreaState state) {
        return TextField(
          controller: _textController,
          maxLines: null,
          expands: true,
          textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            hintText: 'Введите ваш текст здесь...',
            filled: true,
            fillColor: colorScheme.surfaceContainer,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide.none,
            ),
          ),
          onChanged: (String value) {
            final OllamaChatState ollamaChatState =
                context.read<OllamaChatBloc>().state;

            if (ollamaChatState is OllamaChatSuccess) {
              context.read<TextAreaBloc>().add(
                    AutoCompleteEvent(
                      text: value,
                      model: ollamaChatState.model,
                    ),
                  );
            }
          },
        );
      },
    );
  }
}
