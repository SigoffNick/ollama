import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_response_widget/json/json_response_tab_widget.dart';

@RoutePage()
class OllamaJsonResponseTabPage extends StatelessWidget {
  const OllamaJsonResponseTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const JsonResponseTabWidget();
  }
}
