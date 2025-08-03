import 'package:flutter/material.dart';

class InitialContainerWidget extends StatelessWidget {
  final Alignment alignment;

  const InitialContainerWidget({
    super.key,
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
          'Please enter your requirements to generate a response.',
          style: TextStyle(
            color: colorScheme.onSecondaryContainer,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
