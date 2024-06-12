import 'package:flutter_boardview/board_item.dart';
import 'package:flutter_boardview/board_list.dart';
import 'package:go_router/go_router.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:kanban_app/presentation/pages/board_item_task_history/board_item_task_history.dart';
import 'package:kanban_app/presentation/pages/board_view/board_view.dart';
import 'package:kanban_app/presentation/pages/board_item_view/board_item_view.dart';

import '../data/models/boards/boards_list/boards_list.dart';

final goRouter = GoRouter(
  initialLocation: '/boards',
  routes: [
    GoRoute(
        path: '/boards',
        builder: ((context, state) {
          return BoardView();
        })),
    GoRoute(
      path: '/board-item',
      builder: (context, state) {
        BoardsList boardItem = state.extra as BoardsList;

        return BoardItemView(
          boardItem: boardItem,
        );
      },
    ),
    GoRoute(
        path: '/task-history',
        builder: (context, state) {
          List<BoardTask> boardTasks = state.extra as List<BoardTask>;
          return TaskHistoryPage();
        })
  ],
);
