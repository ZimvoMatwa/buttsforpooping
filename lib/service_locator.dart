import 'package:blockbucks/global_config.dart';
import 'package:blockbucks/router.gr.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;
final _globalConfiguration = GlobalConfiguration();

Future<void> registerServices() async {
  _initRouter();

  // await _loadGlobalConfig();
  // await _initDatabase();
  // _registerDataSources();
  // _registerRepositories();
  // _registerUseCases();
  // await _initMineCodeHttpClient();
}

void _initRouter() {
  serviceLocator.registerLazySingleton<AppRouter>(() => AppRouter());
}
