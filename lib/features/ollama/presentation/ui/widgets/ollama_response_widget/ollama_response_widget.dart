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
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: child,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainer,
                borderRadius: BorderRadius.circular(8.0),
              ),
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
                    child: OutlinedButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Apply Response'),
                    ),
                  ),
                  Expanded(
                    child: FilledButton(
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      onPressed: () => context.read<OllamaBloc>().add(
                            GenerateAnswerEvent(
                              requirements: requestController.text,
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
