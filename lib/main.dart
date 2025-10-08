import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/app/app.dart';
import 'core/app_logger/app_logger.dart';
import 'core/bloc_observer/app_bloc_observer.dart';
import 'core/flavor/flavor.dart';
import 'di/app_di.dart';

void main() async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    final Flavor flavor = getFlavor();
    AppLogger().info('App started in $flavor mode');

    await appLocator.pushNewScopeAsync(
      init: (_) async {
        AppDI.initDependencies(appLocator);
      },
    );
    Bloc.observer = AppBlocObserver();

    runApp(const App());
  }, (Object error, StackTrace stack) {
    AppLogger().wtf(error.toString());
  });
}
