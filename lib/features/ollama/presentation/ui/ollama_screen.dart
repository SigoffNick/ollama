import 'package:flutter/material.dart';

import 'widgets/ollama_request_widget/ollama_request_widget.dart';
import 'widgets/ollama_response_widget/ollama_response_widget.dart';
import 'widgets/text_area_widget/text_area_widget.dart';

class OllamaScreen extends StatefulWidget {
  const OllamaScreen({super.key});

  @override
  State<OllamaScreen> createState() => _OllamaScreenState();
}

class _OllamaScreenState extends State<OllamaScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: TextAreaWidget(),
                    ),
                    Divider(),
                    Expanded(
                      child: OllamaRequestWidget(),
                    ),
                  ],
                ),
              ),
              VerticalDivider(),
              Expanded(
                flex: 2,
                child: OllamaResponseWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
