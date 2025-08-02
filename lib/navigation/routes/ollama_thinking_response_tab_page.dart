import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_response_widget/thinking/thinking_response_tab_widget.dart';

@RoutePage()
class OllamaThinkingResponseTabPage extends StatelessWidget {
  const OllamaThinkingResponseTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ThinkingResponseTabWidget();
  }
}
