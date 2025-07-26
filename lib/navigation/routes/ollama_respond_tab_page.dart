import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_respond_widget/respond/respond_tab_widget.dart';

@RoutePage()
class OllamaRespondTabPage extends StatelessWidget {
  const OllamaRespondTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const RespondTabWidget();
  }
}
