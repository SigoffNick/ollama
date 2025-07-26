import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/ollama_chat_bloc/ollama_chat_bloc.dart';

class OllamaRequestWidget extends StatefulWidget {
  const OllamaRequestWidget({super.key});

  @override
  State<OllamaRequestWidget> createState() => _OllamaRequestWidgetState();
}

class _OllamaRequestWidgetState extends State<OllamaRequestWidget> {
  late final TextEditingController _requestController;

  @override
  void initState() {
    super.initState();
    _requestController = TextEditingController();
  }

  @override
  void dispose() {
    _requestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _requestController,
              maxLines: null,
              expands: true,
              decoration: const InputDecoration(
                hintText: 'Напишите ваш запрос...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            spacing: 8.0,
            children: <Widget>[
              // const Expanded(
              //   child: SizedBox(
              //     height: 48.0,
              //     child: OllamaModelSelectorWidget(),
              //   ),
              // ),
              ElevatedButton(
                onPressed: () => context.read<OllamaChatBloc>().add(
                      GenerateAnswerEvent(
                        question: _requestController.text,
                      ),
                    ),
                child: const Text('Отправить'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
