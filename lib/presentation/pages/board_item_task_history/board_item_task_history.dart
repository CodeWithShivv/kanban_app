import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_event.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_state.dart';
import 'package:kanban_app/blocs/theme/theme_bloc.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:intl/intl.dart';

class TaskHistoryPage extends StatelessWidget {
  const TaskHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = BlocProvider.of<ThemeBloc>(context).state;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeState.themeData.colorScheme.surface,
        title: Text(
          'Task History',
          style: TextStyle(fontSize: 14),
        ),
      ),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          if (state is TaskLoaded) {
            final completedTasks = state.tasks
                .where((task) => task.labels?.contains("Done") ?? false);

            if (completedTasks.isEmpty) {
              return Center(
                child: Text('No completed tasks found.'),
              );
            }

            return ListView.builder(
              itemCount: completedTasks.length,
              itemBuilder: (context, index) {
                final task = completedTasks.elementAt(index);
                final startTime = task.labels?.firstWhere(
                        (label) => label.startsWith("Start Time: "),
                        orElse: () => "") ??
                    "";
                final doneTime = task.labels?.firstWhere(
                        (label) => label.startsWith("Done Time: "),
                        orElse: () => "") ??
                    "";

                final startDateTime = startTime.isNotEmpty
                    ? DateTime.parse(startTime.replaceFirst("Start Time: ", ""))
                    : null;
                final doneDateTime = doneTime.isNotEmpty
                    ? DateTime.parse(doneTime.replaceFirst("Done Time: ", ""))
                    : null;

                final timeSpent =
                    (startDateTime != null && doneDateTime != null)
                        ? doneDateTime.difference(startDateTime)
                        : null;

                return doneTime.isNotEmpty
                    ? Card(
                        child: ListTile(
                          title: Text(task.content ?? 'No title'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (startDateTime != null)
                                Text(
                                    'Start Time: ${DateFormat.yMMMd().add_jm().format(startDateTime)}'),
                              if (doneDateTime != null)
                                Text(
                                    'Done Time: ${DateFormat.yMMMd().add_jm().format(doneDateTime)}'),
                              if (timeSpent != null)
                                Text(
                                    'Time Spent: ${_formatDuration(timeSpent)}'),
                            ],
                          ),
                        ),
                      )
                    : SizedBox();
              },
            );
          } else if (state is TaskLoading) {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.black,
            ));
          } else {
            return Center(child: Text('Failed to load tasks.'));
          }
        },
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$hours:$minutes:$seconds';
  }
}
