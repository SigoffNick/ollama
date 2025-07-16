import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/app/app.dart';
import 'core/app_config/app_config.dart';
import 'core/app_logger/app_logger.dart';
import 'core/bloc_observer/app_bloc_observer.dart';
import 'di/app_di.dart';

Future<void> mainCommon(Flavor flavor) async {
  await runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await appLocator.pushNewScopeAsync(
      init: (_) async {
        AppDI.initDependencies(appLocator, flavor);
      },
    );
    Bloc.observer = AppBlocObserver();

    runApp(const App());
  }, (Object error, StackTrace stack) {
    AppLogger().wtf(error.toString());
  });
}
