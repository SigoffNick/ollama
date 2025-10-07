import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../di/app_di.dart';
import '../../l10n/app_localizations.dart';
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
      localizationsDelegates: <LocalizationsDelegate>[
        AppLocalizations.delegate, // your generated delegate
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en'),
        Locale('ru'),
      ],
      locale: const Locale('ru'),
      builder: (BuildContext context, Widget? child) {
        return child!;
      },
    );
  }
}
