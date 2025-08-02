import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../../../../domain/entity/message.dart';

class UserMessageWidget extends StatelessWidget {
  final UserMessage message;

  const UserMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Bubble(
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
    );
  }
}
