import 'package:flutter/material.dart';

class ErrorContainerWidget extends StatelessWidget {
  final String error;
  final Alignment alignment;

  const ErrorContainerWidget({
    required this.error,
    this.alignment = Alignment.center,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          'Error: $error',
          style: TextStyle(
            color: colorScheme.onErrorContainer,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
