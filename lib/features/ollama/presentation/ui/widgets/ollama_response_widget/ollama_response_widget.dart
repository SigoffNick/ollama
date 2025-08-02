import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../navigation/app_router.dart';
import '../../../bloc/ollama_bloc/ollama_bloc.dart';

class OllamaResponseWidget extends StatelessWidget {
  final TextEditingController requestController;

  const OllamaResponseWidget({
    super.key,
    required this.requestController,
  });

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const <PageRouteInfo>[
        OllamaProblemsResponseTabRoute(),
        OllamaQuestionsResponseTabRoute(),
        OllamaJsonResponseTabRoute(),
        OllamaThinkingResponseTabRoute(),
      ],
      builder: (
        BuildContext context,
        Widget child,
        TabController controller,
      ) {
        return Column(
          children: <Widget>[
            TabBar(
              controller: controller,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              tabs: const <Widget>[
                Tab(text: 'Problems'),
                Tab(text: 'Questions'),
                Tab(text: 'Json'),
                Tab(text: 'Thinking'),
              ],
            ),
            Expanded(
              child: child,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                spacing: 8.0,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      //=> context.read<OllamaChatBloc>().add(
                      //GenerateAnswerEvent(
                      //question: _requestController.text,
                      //),
                      //),
                      child: const Text('Apply Response'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => context.read<OllamaBloc>().add(
                            GenerateAnswerEvent(
                              question: requestController.text,
                            ),
                          ),
                      child: const Text('Check'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
