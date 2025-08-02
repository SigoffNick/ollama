import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markdown_widget/markdown_widget.dart';
import '../../../../../../core/ollama/ollama_response.dart';
import '../../../bloc/ollama_bloc/ollama_bloc.dart';

class AiVariantResponseWidget extends StatelessWidget {
  const AiVariantResponseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return BlocBuilder<OllamaBloc, OllamaState>(
      builder: (
        BuildContext context,
        OllamaState state,
      ) {
        return switch (state) {
          OllamaInitial() => const Center(
              child: Text('Initial State'),
            ),
          OllamaLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
          OllamaLoaded(ollamaResponse: final OllamaResponse ollamaResponse) =>
            MarkdownWidget(
              data: ollamaResponse.aiVariant,
              config: (isDark
                      ? MarkdownConfig.darkConfig
                      : MarkdownConfig.defaultConfig)
                  .copy(
                configs: <WidgetConfig>[const PreConfig()],
              ),
            ),
          OllamaError(errorMessage: final String errorMessage) => Center(
              child: Text('Error: $errorMessage'),
            ),
        };
      },
    );
  }
}
