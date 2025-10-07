import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

import '../../../../../../domain/entity/message.dart';

class ErrorMessageWidget extends StatelessWidget {
  final ErrorMessage message;

  const ErrorMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Bubble(
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
    );
  }
}
