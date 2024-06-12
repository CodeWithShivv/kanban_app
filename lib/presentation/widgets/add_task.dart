import 'package:flutter/material.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';

class AddTaskDialog extends StatefulWidget {
  final int listIndex;
  final void Function(BoardTask) onTaskAdded;

  const AddTaskDialog(
      {Key? key, required this.listIndex, required this.onTaskAdded})
      : super(key: key);

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  String _title = '';

  String _description = '';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Add Task',
        style: TextStyle(fontSize: 14),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              labelText: 'Title',
              hintStyle: TextStyle(fontSize: 12),
            ),
            onChanged: (value) => _title = value,
          ),
          SizedBox(height: 8),
          SizedBox(height: 8),
          TextField(
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 12),
              labelText: 'Description',
            ),
            onChanged: (value) => _description = value,
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            if (_title.isNotEmpty) {
              final task = BoardTask(
                content: _title,
                description: _description,
              );
              widget.onTaskAdded(task);
              Navigator.of(context).pop(); // Close the dialog
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Please enter a title for the task'),
                ),
              );
            }
          },
          child: Text('Add'),
        ),
      ],
    );
  }
}
