import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_respond_widget/thinking/thinking_tab_widget.dart';

@RoutePage()
class OllamaThinkingTabPage extends StatelessWidget {
  const OllamaThinkingTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ThinkingTabWidget();
  }
}
