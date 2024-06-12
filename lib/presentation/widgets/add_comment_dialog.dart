import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_bloc.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_event.dart';

class AddCommentDialog extends StatelessWidget {
  final String taskId;

  AddCommentDialog({required this.taskId});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 16.0,
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                labelText: 'Enter comment',
                contentPadding: const EdgeInsets.symmetric(horizontal: 12.0),
              ),
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: const TextStyle(
                        fontSize: 16.0, color: Colors.blue), // Bold and blue
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<TaskBloc>().add(AddTaskCommentEvent({
                          "task_id": taskId,
                          "content": _controller.text,
                        }));
                    Navigator.pop(context);
                  },
                  child: Text('Comment'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
