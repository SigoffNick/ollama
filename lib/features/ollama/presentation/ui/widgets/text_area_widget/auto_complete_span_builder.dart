import 'package:extended_text_field/extended_text_field.dart';
import 'package:flutter/material.dart';

class AutoCompleteSpanBuilder extends SpecialTextSpanBuilder {
  final ColorScheme colorScheme;
  final String? autoComplete;

  AutoCompleteSpanBuilder({
    required this.colorScheme,
    this.autoComplete,
  });

  @override
  TextSpan build(
    String data, {
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap,
  }) {
    final int autoCompleteLength = autoComplete?.length ?? 0;

    final String originData =
        data.substring(0, data.length - autoCompleteLength);

    return TextSpan(
      children: <InlineSpan>[
        TextSpan(
          text: originData,
          style: textStyle,
        ),
        TextSpan(
          text: autoComplete,
          style: TextStyle(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      style: textStyle,
    );
  }

  @override
  SpecialText? createSpecialText(
    String flag, {
    TextStyle? textStyle,
    SpecialTextGestureTapCallback? onTap,
    required int index,
  }) {
    // TODO: implement createSpecialText
    throw UnimplementedError();
  }
}
