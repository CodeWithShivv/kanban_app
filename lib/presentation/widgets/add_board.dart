import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/add_board/board_bloc.dart';
import 'package:kanban_app/blocs/boards/add_board/board_event.dart';
import 'package:kanban_app/data/services/event_tracker/event_tracker.dart';
import 'package:kanban_app/dependency_locator.dart';

class AddBoard extends StatefulWidget {
  @override
  _AddBoardState createState() => _AddBoardState();
}

class _AddBoardState extends State<AddBoard> {
  late String _selectedOption;
  TextEditingController boardNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedOption = 'List';
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Add Board',
        style: TextStyle(fontSize: 14),
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: boardNameController,
            style: TextStyle(fontSize: 12),
            decoration: InputDecoration(
              labelText: 'Enter board name',
              hintStyle: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(height: 15),
          Text(
            'Select Board Type',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              _buildRadioButton('List'),
              _buildRadioButton('Board'),
              _buildRadioButton('Calendar'),
            ],
          ),
          SizedBox(height: 8),
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
            context.read<BoardBloc>().add(AddBoardEvent({
                  "name": boardNameController.text,
                  "view_style": _selectedOption,
                }));
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Add'),
        ),
      ],
    );
  }

  Widget _buildRadioButton(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _selectedOption,
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue!;
            });
          },
        ),
        Text(
          value,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
