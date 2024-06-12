import 'package:get_it/get_it.dart';
import 'package:kanban_app/data/repositories/board_repository.dart';
import 'package:kanban_app/data/repositories/task_repository.dart';
import 'package:kanban_app/data/services/error_reporter/error_reporter.dart';
import 'package:kanban_app/data/services/event_tracker/event_tracker.dart';
import 'package:kanban_app/data/services/network/network_service.dart';

GetIt getIt = GetIt.instance;

void initDependencyLocator() {
  getIt.registerSingleton<NetworkService>(NetworkService());
  getIt.registerLazySingleton<BoardsRepository>(
      () => BoardsRepository(networkService: getIt<NetworkService>()));

  getIt.registerLazySingleton<TaskRepository>(
      () => TaskRepository(networkService: getIt<NetworkService>()));

  getIt.registerLazySingleton<ErrorReporter>(() => ErrorReporter());
  getIt.registerLazySingleton(() => EventTracker());
}

Future<void> preInit() async {
  initDependencyLocator();
  await getIt.allReady();
}
