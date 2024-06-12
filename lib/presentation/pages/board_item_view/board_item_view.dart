import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boardview/boardview.dart';
import 'package:flutter_boardview/boardview_controller.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_event.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:kanban_app/data/models/boards/boards_list/boards_list.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_state.dart';
import 'package:kanban_app/blocs/theme/theme_bloc.dart';
import 'package:kanban_app/blocs/theme/theme_state.dart';
import 'package:kanban_app/presentation/widgets/board_item_section.dart';
import 'package:kanban_app/router/app_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BoardItemView extends StatefulWidget {
  final BoardsList boardItem;

  const BoardItemView({Key? key, required this.boardItem}) : super(key: key);

  @override
  State<BoardItemView> createState() => _BoardItemViewState();
}

class _BoardItemViewState extends State<BoardItemView> {
  final BoardViewController boardViewController = BoardViewController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (BuildContext context, taskState) {
        final themeState = BlocProvider.of<ThemeBloc>(context).state;
        if (taskState is TaskLoaded) {
          return Scaffold(
            appBar: _buildAppBar(themeState, taskState),
            backgroundColor: themeState.themeData.colorScheme.surface,
            body: _buildBody(context, taskState.tasks),
          );
        } else {
          return Skeletonizer(
            enabled: true,
            child: SafeArea(
              child: Scaffold(
                appBar: _buildAppBar(themeState, null), // Include AppBar here
                backgroundColor: themeState.themeData.colorScheme.surface,
                body: _buildBody(context, [
                  BoardTask(
                    content: "Test Content",
                    description: "Test Description ",
                  )
                ]),
              ),
            ),
          );
        }
      },
    );
  }

  AppBar _buildAppBar(ThemeState themeState, TaskLoaded? taskState) {
    return AppBar(
      backgroundColor: themeState.themeData.colorScheme.surface,
      title: Text(
        widget.boardItem.name ?? 'Kanban ',
        style: const TextStyle(fontSize: 16),
      ),
      actions: [
        IconButton(
          onPressed: () {
            goRouter.pushReplacement('/boards');
          },
          icon: const Icon(Icons.close),
        ),
        IconButton(
          onPressed: () {
            BlocProvider.of<TaskBloc>(context).add(FetchTasksEvent());
            if (taskState != null)
              goRouter.push('/task-history', extra: taskState.tasks);
          },
          icon: Icon(Icons.history),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context, List<BoardTask> tasks) {
    if (tasks.isEmpty) {
      return const Center(child: Text('No tasks found.'));
    } else {
      return BoardSection(
        boardViewController: boardViewController,
        boardItem: widget.boardItem,
        tasks: tasks,
      );
    }
  }
}
