import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/board_task_comment/board_task_comment_bloc.dart';
import 'package:kanban_app/data/repositories/board_repository.dart';
import 'package:kanban_app/data/repositories/task_repository.dart';
import 'package:kanban_app/data/services/error_reporter/error_reporter.dart';
import 'package:kanban_app/data/services/network/network_service.dart';
import 'package:kanban_app/dependency_locator.dart';
import 'package:kanban_app/blocs/boards/add_board/board_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_event.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_bloc.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_event.dart';
import 'package:kanban_app/blocs/theme/theme_bloc.dart';
import 'package:kanban_app/blocs/theme/theme_state.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:kanban_app/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeDependencies();

  runApp(KanbanAppMVP());
}

Future<void> _initializeDependencies() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ErrorReporter().initialize();
  await preInit();
  await getIt<NetworkService>().loadEnv();
}

class KanbanAppMVP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: _blocProviders(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (BuildContext context, state) => MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Kanban App ',
          theme: state.themeData,
          routerDelegate: goRouter.routerDelegate,
          routeInformationParser: goRouter.routeInformationParser,
          routeInformationProvider: goRouter.routeInformationProvider,
        ),
      ),
    );
  }

  List<BlocProvider> _blocProviders() {
    return [
      BlocProvider<ThemeBloc>(create: (_) => ThemeBloc()),
      BlocProvider<BoardsListBloc>(
        create: (_) => BoardsListBloc(
          boardsRepository: getIt<BoardsRepository>(),
        )..add(FetchBoardsList()),
      ),
      BlocProvider<BoardBloc>(
        create: (context) {
          final boardsListBloc = context.read<BoardsListBloc>();
          return BoardBloc(
            boardsRepository: getIt<BoardsRepository>(),
            boardsListBloc: boardsListBloc,
          );
        },
      ),
      BlocProvider<TaskBloc>(
        create: (_) => TaskBloc(taskRepository: getIt<TaskRepository>())
          ..add(FetchTasksEvent()),
      ),
      BlocProvider<TaskCommentBloc>(
          create: (_) =>
              TaskCommentBloc(taskRepository: getIt<TaskRepository>()))
    ];
  }
}
