import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../core/extension/list_messages_extension.dart';
import '../../../../../domain/entity/message.dart';
import '../../../../bloc/ollama_chat_bloc/ollama_chat_bloc.dart';
import 'messages/assistant_loading_message_widget.dart';
import 'messages/assistant_message_widget.dart';
import 'messages/error_message_widget.dart';
import 'messages/user_message_widget.dart';

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

  void _maybeScrollToBottom(OllamaChatSuccess state) {
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
    return GestureDetector(
      onLongPress: () {
        _isUserScrolling = true;
      },
      onLongPressEnd: (_) {
        _isUserScrolling = false;
      },
      child: BlocConsumer<OllamaChatBloc, OllamaChatState>(
        listener: (BuildContext context, OllamaChatState state) {
          if (state is OllamaChatSuccess) {
            WidgetsBinding.instance
                .addPostFrameCallback((_) => _maybeScrollToBottom(state));
          }
        },
        builder: (BuildContext context, OllamaChatState state) {
          return ListView.builder(
            controller: _scrollController,
            itemCount: state is OllamaChatSuccess ? state.messages.length : 0,
            itemBuilder: (BuildContext context, int index) {
              final Message message =
                  (state as OllamaChatSuccess).messages[index];
              return switch (message) {
                UserMessage() => UserMessageWidget(
                    message: message,
                  ),
                AssistantMessage() => AssistantMessageWidget(
                    message: message,
                  ),
                ErrorMessage() => ErrorMessageWidget(
                    message: message,
                  ),
                AssistantLoadingMessage() => AssistantLoadingMessageWidget(
                    message: message,
                  ),
              };
            },
          );
        },
      ),
    );
  }
}
