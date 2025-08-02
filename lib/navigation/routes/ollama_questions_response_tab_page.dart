import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_response_widget/questions/questions_response_tab_widget.dart';

@RoutePage()
class OllamaQuestionsResponseTabPage extends StatelessWidget {
  const OllamaQuestionsResponseTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const QuestionsResponseTabWidget();
  }
}
