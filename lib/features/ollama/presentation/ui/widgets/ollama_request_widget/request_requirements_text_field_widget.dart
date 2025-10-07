import 'package:flutter/material.dart';

class RequestRequirementsTextFieldWidget extends StatelessWidget {
  final TextEditingController requestController;

  const RequestRequirementsTextFieldWidget({
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
        hintText: 'Input your requirements here...',
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
