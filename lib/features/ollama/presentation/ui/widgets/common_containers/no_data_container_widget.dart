import 'package:flutter/material.dart';

class NoDataContainerWidget extends StatelessWidget {
  final String message;
  final Alignment alignment;

  const NoDataContainerWidget({
    super.key,
    required this.message,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Align(
      alignment: alignment,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: colorScheme.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
