import 'package:get_it/get_it.dart';

import '../core/app_config/app_config.dart';
import '../core/route_observer/app_route_observer.dart';
import '../navigation/app_router.dart';

final GetIt appLocator = GetIt.instance;

final class AppDI {
  static void initDependencies(GetIt locator, Flavor flavor) {
    locator.registerSingleton<AppConfig>(
      AppConfig.fromFlavor(flavor),
    );

    locator.registerSingleton(AppRouter());

    locator.registerFactory(AppRouteObserver.new);
  }
}
