import 'package:flutter/material.dart';

import 'widgets/ollama_request_widget/ollama_request_widget.dart';
import 'widgets/ollama_respond_widget/ollama_respond_widget.dart';
import 'widgets/text_area_widget/text_area_widget.dart';

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
      body: const Row(
        children: [
          Expanded(
            flex: 3,
            child: TextAreaWidget(),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: OllamaRespondWidget(),
                ),
                Expanded(
                  flex: 2,
                  child: OllamaRequestWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
