import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boardview/board_item.dart';
import 'package:flutter_boardview/board_list.dart';
import 'package:flutter_boardview/boardview.dart';
import 'package:flutter_boardview/boardview_controller.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_state.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:kanban_app/data/models/boards/boards_list/boards_list.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_bloc.dart';
import 'package:kanban_app/blocs/theme/theme_bloc.dart';
import 'package:kanban_app/blocs/theme/theme_state.dart';
import 'package:kanban_app/presentation/widgets/add_comment_dialog.dart';
import 'package:kanban_app/presentation/widgets/add_task.dart';
import 'package:kanban_app/presentation/widgets/board_card.dart';

import '../../blocs/boards/board_tasks.dart/task_event.dart';

class BoardSection extends StatelessWidget {
  final BoardViewController boardViewController;
  final BoardsList boardItem;
  final List<BoardTask> tasks;

  const BoardSection({
    Key? key,
    required this.boardViewController,
    required this.boardItem,
    required this.tasks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.read<ThemeBloc>().state;
    final categorizedTasks = _categorizeTasks(tasks, boardItem.id!);

    return BoardView(
      boardViewController: boardViewController,
      lists: [
        _createBoardList(
            context, categorizedTasks['todoTasks'] ?? [], theme, 'To Do', 0),
        _createBoardList(context, categorizedTasks['inProgressTasks'] ?? [],
            theme, 'In Progress', 1),
        _createBoardList(
            context, categorizedTasks['doneTasks'] ?? [], theme, 'Done', 2),
      ],
    );
  }

  Map<String, List<BoardTask>> _categorizeTasks(
      List<BoardTask> tasks, String boardId) {
    List<BoardTask> todoTasks = [];
    List<BoardTask> inProgressTasks = [];
    List<BoardTask> doneTasks = [];

    for (var task in tasks.where((element) => element.projectId == boardId)) {
      if (task.labels?.contains("In Progress") ?? false) {
        inProgressTasks.add(task);
      } else if (task.labels?.contains("Done") ?? false) {
        doneTasks.add(task);
      } else if (task.labels?.contains("To Do") ?? false) {
        todoTasks.add(task);
      }
    }

    return {
      'todoTasks': todoTasks,
      'inProgressTasks': inProgressTasks,
      'doneTasks': doneTasks,
    };
  }

  BoardList _createBoardList(BuildContext context, List<BoardTask> tasks,
      ThemeState theme, String title, int listIndex) {
    List<BoardItem> items =
        tasks.map((task) => _createBoardItem(context, task)).toList();

    if (listIndex == 0) {
      items.add(
        BoardItem(
          item: Container(
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {
                _showAddTaskDialog(context, listIndex);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Add Task"),
                  Icon(Icons.add, color: Colors.black)
                ],
              ),
            ),
          ),
        ),
      );
    }

    return BoardList(
      backgroundColor: theme.themeData.colorScheme.background,
      draggable: true,
      header: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Badge(
                offset: const Offset(15, -4),
                label: Text(
                  "${tasks.length}",
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 12),
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ],
      items: items,
    );
  }

  BoardItem _createBoardItem(BuildContext context, BoardTask item) {
    return BoardItem(
      draggable: true,
      onDropItem:
          (newListIndex, newItemIndex, oldListIndex, oldItemIndex, state) {
        _updateTaskLabels(context, item, newListIndex!);
      },
      item: BoardCard(
        onComment: () {
          if (item.id != null) {
            _showAddCommentDialog(context, item.id!);
          }
        },
        item: item,
        onEdit: () {},
      ),
    );
  }

  void _showAddCommentDialog(BuildContext context, String taskId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddCommentDialog(taskId: taskId);
      },
    );
  }

  void _updateTaskLabels(BuildContext context, BoardTask task, int listIndex) {
    String label;
    String startTime = task.labels?.firstWhere(
            (label) => label.startsWith("Start Time: "),
            orElse: () => "") ??
        "";
    String doneTime = task.labels?.firstWhere(
            (label) => label.startsWith("Done Time: "),
            orElse: () => "") ??
        "";

    if (listIndex == 1) {
      label = "In Progress";
      startTime = "Start Time: ${DateTime.now().toIso8601String()}";
      doneTime = "";
    } else if (listIndex == 2) {
      label = "Done";
      doneTime = "Done Time: ${DateTime.now().toIso8601String()}";
    } else {
      label = "To Do";
      doneTime = "";
    }

    List<String> labels = [label];
    if (startTime.isNotEmpty) labels.add(startTime);
    if (doneTime.isNotEmpty) labels.add(doneTime);

    context.read<TaskBloc>().add(TaskUpdateEvent({
          "labels": labels,
        }, task.id ?? ''));
  }

  void startTaskTimer(BuildContext context, BoardTask task) {
    context.read<TaskBloc>().add(TaskUpdateEvent({
          "start_time": DateTime.now().toIso8601String(),
        }, task.id ?? ''));
  }

  void stopTaskTimer(BuildContext context, BoardTask task) {
    context.read<TaskBloc>().add(TaskUpdateEvent({
          "done_time": DateTime.now().toIso8601String(),
        }, task.id ?? ''));
  }

  void _showAddTaskDialog(BuildContext context, int listIndex) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AddTaskDialog(
          listIndex: listIndex,
          onTaskAdded: (task) {
            context.read<TaskBloc>().add(TaskAddEvent({
                  "content": task.content ?? '',
                  "project_id": boardItem.id,
                  "description": task.description,
                  "labels": ["To Do"]
                }));
          },
        );
      },
    );
  }
}
