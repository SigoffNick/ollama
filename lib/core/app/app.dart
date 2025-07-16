import 'package:flutter/material.dart';

import '../../di/app_di.dart';
import '../../navigation/app_router.dart';
import '../route_observer/app_route_observer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = appLocator<AppRouter>();

    return MaterialApp.router(
      onGenerateTitle: (BuildContext context) => 'AI Chat',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(
        navigatorObservers: () => <NavigatorObserver>[
          appLocator<AppRouteObserver>(),
        ],
      ),
      builder: (BuildContext context, Widget? child) {
        return child!;
      },
    );
  }
}
