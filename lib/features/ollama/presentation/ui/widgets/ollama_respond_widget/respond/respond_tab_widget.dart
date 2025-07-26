import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/extension/list_messages_extension.dart';
import '../../../../../domain/entity/message.dart';
import '../../../../bloc/ollama_bloc.dart';

class RespondTabWidget extends StatefulWidget {
  const RespondTabWidget({super.key});

  @override
  State<RespondTabWidget> createState() => _RespondTabWidgetState();
}

class _RespondTabWidgetState extends State<RespondTabWidget> {
  late final ScrollController _scrollController;
  bool _isUserScrolling = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _maybeScrollToBottom(OllamaSuccess state) {
    final ScrollPosition position = _scrollController.position;
    if (_isUserScrolling) {
      return;
    }

    if (state.messages.endsWithUserMessage) {
      _scrollController.jumpTo(position.maxScrollExtent);
    }

    if (position.maxScrollExtent - position.pixels < 50) {
      _scrollController.jumpTo(position.maxScrollExtent);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onLongPress: () {
        _isUserScrolling = true;
      },
      onLongPressEnd: (_) {
        _isUserScrolling = false;
      },
      child: BlocConsumer<OllamaBloc, OllamaState>(
        listener: (BuildContext context, OllamaState state) {
          if (state is OllamaSuccess) {
            WidgetsBinding.instance
                .addPostFrameCallback((_) => _maybeScrollToBottom(state));
          }
        },
        builder: (BuildContext context, OllamaState state) {
          return ListView.builder(
            controller: _scrollController,
            itemCount: state is OllamaSuccess ? state.messages.length : 0,
            itemBuilder: (BuildContext context, int index) {
              final Message message = (state as OllamaSuccess).messages[index];
              return switch (message) {
                UserMessage() => Bubble(
                    margin: const BubbleEdges.only(top: 16),
                    alignment: Alignment.topRight,
                    nip: BubbleNip.rightTop,
                    color: colorScheme.primaryFixed,
                    child: Text(
                      message.content.toString(),
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: colorScheme.onPrimaryFixed,
                      ),
                    ),
                  ),
                AssistantMessage() => Bubble(
                    margin: const BubbleEdges.only(top: 16),
                    alignment: Alignment.topLeft,
                    nip: BubbleNip.leftTop,
                    color: colorScheme.surfaceContainerHigh,
                    child: Column(
                      spacing: 8.0,
                      children: <Widget>[
                        Text(
                          message.content.toString(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        Row(
                          spacing: 8,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                size: 16,
                                Icons.copy,
                                color: colorScheme.primary,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Icon(
                                size: 16,
                                Icons.add,
                                color: colorScheme.primary,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ErrorMessage() => Bubble(
                    margin: const BubbleEdges.only(
                      top: 16,
                      right: 16,
                      left: 16,
                    ),
                    alignment: Alignment.center,
                    nip: BubbleNip.no,
                    color: colorScheme.error,
                    child: Text(
                      message.content.toString(),
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                AssistantLoadingMessage() => Bubble(
                    margin: const BubbleEdges.only(top: 16),
                    alignment: Alignment.topLeft,
                    nip: BubbleNip.leftTop,
                    color: const Color.fromRGBO(255, 255, 255, 1.0),
                    child: const Row(
                      spacing: 8,
                      children: <Widget>[
                        Text(
                          'Thinking...',
                        ),
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: Align(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ],
                    ),
                  ),
              };
            },
          );
        },
      ),
    );
  }
}
