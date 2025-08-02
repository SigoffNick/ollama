import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_response_widget/problems/problems_response_tab_widget.dart';

@RoutePage()
class OllamaProblemsResponseTabPage extends StatelessWidget {
  const OllamaProblemsResponseTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ProblemsResponseTabWidget();
  }
}
