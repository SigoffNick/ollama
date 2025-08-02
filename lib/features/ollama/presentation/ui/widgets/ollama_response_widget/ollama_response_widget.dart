import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../navigation/app_router.dart';

class OllamaResponseWidget extends StatelessWidget {
  const OllamaResponseWidget({super.key});

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
          ],
        );
      },
    );
  }
}
