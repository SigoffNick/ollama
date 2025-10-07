import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/ollama/presentation/ui/widgets/ollama_response_widget/chat/chat_response_tab_widget.dart';

@RoutePage()
class OllamaChatResponseTabPage extends StatelessWidget {
  const OllamaChatResponseTabPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ChatResponseTabWidget();
  }
}
