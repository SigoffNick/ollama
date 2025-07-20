import 'package:flutter/material.dart';
import 'package:ollama/features/ollama/presentation/ui/widgets/olama_request_widget/olama_request_widget.dart';
import 'package:ollama/features/ollama/presentation/ui/widgets/olama_respond_widget/olama_respond_widget.dart';
import 'package:ollama/features/ollama/presentation/ui/widgets/text_area_widget/text_area_widget.dart';

class OllamaScreen extends StatefulWidget {
  const OllamaScreen({super.key});

  @override
  State<OllamaScreen> createState() => _OllamaScreenState();
}

class _OllamaScreenState extends State<OllamaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Olama chat'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: TextAreaWidget(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: OlamaRespondWidget(),
                ),
                Expanded(
                  flex: 2,
                  child: OlamaRequestWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
