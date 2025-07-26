import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../navigation/app_router.dart';

class OllamaRespondWidget extends StatelessWidget {
  const OllamaRespondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const <PageRouteInfo>[
        OllamaRespondTabRoute(),
        OllamaThinkingTabRoute(),
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
                Tab(text: 'Answer'),
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
