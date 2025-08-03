import 'package:flutter/material.dart';

class LoadingContainerWidget extends StatelessWidget {
  final Alignment alignment;

  const LoadingContainerWidget({
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
        child: Center(
          child: CircularProgressIndicator(
            color: colorScheme.onSecondaryContainer,
          ),
        ),
      ),
    );
  }
}
