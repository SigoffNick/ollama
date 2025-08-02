import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:html/dom.dart' hide Text;
import 'package:html/parser.dart';
import 'package:markdown/markdown.dart' hide Text, Document;

import '../../../../../../domain/entity/message.dart';
import '../../../../../bloc/ollama_chat_bloc/ollama_chat_bloc.dart';
import '../../../../../bloc/text_area_bloc/text_area_bloc.dart';

class AssistantMessageWidget extends StatelessWidget {
  final AssistantMessage message;

  const AssistantMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return BlocBuilder<OllamaChatBloc, OllamaChatState>(
      builder: (BuildContext context, OllamaChatState state) {
        return Bubble(
          margin: const BubbleEdges.only(top: 16),
          alignment: Alignment.topLeft,
          nip: BubbleNip.leftTop,
          color: colorScheme.surfaceContainerHigh,
          child: Column(
            spacing: 8.0,
            children: <Widget>[
              SelectableText(
                markdownToPlainText(message.content.toString()),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              Row(
                spacing: 8,
                children: <Widget>[
                  Tooltip(
                    message: 'Copy',
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        size: 16,
                        Icons.copy,
                        color: colorScheme.primary,
                      ),
                    ),
                  ),
                  Tooltip(
                    message: 'Add',
                    child: GestureDetector(
                      onTap: state is OllamaChatSuccess
                          ? () => context.read<TextAreaBloc>().add(
                                AddAnswerToTextEvent(
                                  answer: message.content.toString(),
                                  model: state.model,
                                ),
                              )
                          : null,
                      child: Icon(
                        size: 16,
                        Icons.add,
                        color: colorScheme.primary,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }

  String markdownToPlainText(String markdownSource) {
    final String html = markdownToHtml(markdownSource);
    final Document document = parse(html);
    return document.body?.text ?? '';
  }
}
