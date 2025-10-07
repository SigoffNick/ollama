import 'package:flutter/material.dart';

class OllamaRequestWidget extends StatelessWidget {
  final TextEditingController requestController;

  const OllamaRequestWidget({
    super.key,
    required this.requestController,
  });

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return TextField(
      controller: requestController,
      maxLines: null,
      expands: true,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        hintText: 'Write your request here ...',
        filled: true,
        fillColor: colorScheme.surfaceContainer,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
