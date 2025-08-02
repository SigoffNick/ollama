import 'package:flutter/material.dart';

import '../../../../core/prompt.dart';
import 'widgets/ai_variant/ai_variant_response_widget.dart';
import 'widgets/ollama_request_widget/request_requirements_text_field_widget.dart';
import 'widgets/ollama_response_widget/ollama_response_widget.dart';

class OllamaScreen extends StatefulWidget {
  const OllamaScreen({super.key});

  @override
  State<OllamaScreen> createState() => _OllamaScreenState();
}

class _OllamaScreenState extends State<OllamaScreen> {
  late final TextEditingController _requestController;

  @override
  void initState() {
    super.initState();
    _requestController = TextEditingController(text: request);
  }

  @override
  void dispose() {
    _requestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: RequestRequirementsTextFieldWidget(
                        requestController: _requestController,
                      ),
                    ),
                    const Divider(),
                    const Expanded(
                      child: AiVariantResponseWidget(),
                    ),
                  ],
                ),
              ),
              const VerticalDivider(),
              Expanded(
                flex: 2,
                child: OllamaResponseWidget(
                  requestController: _requestController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
