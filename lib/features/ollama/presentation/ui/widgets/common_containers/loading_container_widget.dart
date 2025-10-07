import 'package:flutter/material.dart';

class LoadingContainerWidget extends StatelessWidget {
  const LoadingContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: CircularProgressIndicator(
          color: colorScheme.onSecondaryContainer,
        ),
      ),
    );
  }
}
