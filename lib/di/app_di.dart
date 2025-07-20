import 'package:get_it/get_it.dart';
import '../core/app_config/app_config.dart';
import '../core/app_events/app_event_bus.dart';
import '../core/app_events/app_event_bus_interface.dart';
import '../core/errors/error_handler.dart';
import '../core/network/api_provider.dart';
import '../core/network/dio_config.dart';
import '../core/route_observer/app_route_observer.dart';
import '../features/ollama/data/remote_data_source/export_remote_data_sources.dart';
import '../features/ollama/data/repositories_impl/export_repositories_impl.dart';
import '../features/ollama/domain/repository/export_repositories.dart';
import '../features/ollama/domain/use_case/export_use_cases.dart';
import '../navigation/app_router.dart';

final GetIt appLocator = GetIt.instance;

final class AppDI {
  static void initDependencies(GetIt locator, Flavor flavor) {
    locator.registerSingleton<AppConfig>(
      AppConfig.fromFlavor(flavor),
    );

    locator.registerLazySingleton<AppEventBus>(
      AppEventBus.new,
    );

    locator.registerLazySingleton<AppEventNotifier>(
      appLocator.call<AppEventBus>,
    );

    locator.registerLazySingleton<AppEventObserver>(
      appLocator.call<AppEventBus>,
    );

    locator.registerSingleton(AppRouter());

    locator.registerFactory(AppRouteObserver.new);

    locator.registerLazySingleton<DioConfig>(
      () => DioConfig(
        appConfig: locator<AppConfig>(),
      ),
    );

    locator.registerLazySingleton<ErrorHandler>(
      () => ErrorHandler(
        eventNotifier: locator<AppEventNotifier>(),
      ),
    );

    locator.registerLazySingleton<ApiProvider>(
      () => ApiProvider(
        dio: locator<DioConfig>().dio,
        errorHandler: locator<ErrorHandler>(),
      ),
    );

    locator.registerLazySingleton<OlamaRemoteDataSource>(
      () => OlamaRemoteDataSourceImpl(
        apiProvider: locator<ApiProvider>(),
        appConfig: locator<AppConfig>(),
      ),
    );

    locator.registerLazySingleton<OlamaRepository>(
      () => OlamaRepositoryImpl(
        olamaRemoteDataSource: locator<OlamaRemoteDataSource>(),
      ),
    );

    locator.registerLazySingleton<GenerateAnswerUseCase>(
      () => GenerateAnswerUseCase(
        olamaRepository: locator<OlamaRepository>(),
      ),
    );
  }
}
