import 'package:flutter/material.dart';

class OlamaRequestWidget extends StatefulWidget {
  const OlamaRequestWidget({super.key});

  @override
  State<OlamaRequestWidget> createState() => _OlamaRequestWidgetState();
}

class _OlamaRequestWidgetState extends State<OlamaRequestWidget> {
  late final TextEditingController _requestController;

  @override
  void initState() {
    super.initState();
    _requestController = TextEditingController();
  }

  @override
  dispose() {
    _requestController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              'Запросы',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
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
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Отправить'),
            ),
          ),
        ],
      ),
    );
  }
}
