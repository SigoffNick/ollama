import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entity/message.dart';
import '../../../bloc/ollama_bloc.dart';

class OllamaRespondWidget extends StatefulWidget {
  const OllamaRespondWidget({super.key});

  @override
  State<OllamaRespondWidget> createState() => _OllamaRespondWidgetState();
}

class _OllamaRespondWidgetState extends State<OllamaRespondWidget> {
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

    if (state.messagesEndsWithUserMessage) {
      _scrollController.jumpTo(position.maxScrollExtent);
    }

    if (position.maxScrollExtent - position.pixels < 50) {
      _scrollController.jumpTo(position.maxScrollExtent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Ответы AI',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onLongPress: () {
                _isUserScrolling = true;
              },
              onLongPressEnd: (_) {
                _isUserScrolling = false;
              },
              child: BlocConsumer<OllamaBloc, OllamaState>(
                listener: (BuildContext context, OllamaState state) {
                  if (state is OllamaSuccess) {
                    WidgetsBinding.instance.addPostFrameCallback(
                        (_) => _maybeScrollToBottom(state));
                  }
                },
                builder: (BuildContext context, OllamaState state) {
                  return ListView.builder(
                    controller: _scrollController,
                    itemCount:
                        state is OllamaSuccess ? state.messages.length : 0,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message =
                          (state as OllamaSuccess).messages[index];
                      if (message is UserMessage) {
                        return Bubble(
                          margin: const BubbleEdges.only(top: 10),
                          alignment: Alignment.topRight,
                          nip: BubbleNip.rightTop,
                          color: Color.fromRGBO(225, 255, 199, 1.0),
                          child: Text(
                            message.content.toString(),
                            textAlign: TextAlign.right,
                          ),
                        );
                      } else {
                        return Bubble(
                          margin: const BubbleEdges.only(top: 10),
                          alignment: Alignment.topLeft,
                          nip: BubbleNip.leftTop,
                          color: Color.fromRGBO(255, 255, 255, 1.0),
                          child: Text(
                            message.content.toString(),
                            textAlign: TextAlign.left,
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
