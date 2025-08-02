import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../../../../domain/entity/message.dart';

class AssistantLoadingMessageWidget extends StatelessWidget {
  final AssistantLoadingMessage message;

  const AssistantLoadingMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Bubble(
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
    );
  }
}
