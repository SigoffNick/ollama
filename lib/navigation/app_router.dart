import 'package:auto_route/auto_route.dart';
import 'routes/routes.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(
          page: OllamaRoute.page,
          initial: true,
        )
      ];
}
