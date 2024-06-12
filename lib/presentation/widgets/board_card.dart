import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/board_task_comment/board_task_comment_bloc.dart';
import 'package:kanban_app/blocs/boards/board_task_comment/board_task_comment_event.dart';
import 'package:kanban_app/blocs/boards/board_task_comment/board_task_comment_state.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BoardCard extends StatefulWidget {
  final BoardTask item;

  final Function()? onEdit;
  final Function()? onComment;

  const BoardCard({Key? key, required this.item, this.onEdit, this.onComment})
      : super(key: key);

  @override
  State<BoardCard> createState() => _BoardCardState();
}

class _BoardCardState extends State<BoardCard> {
  @override
  void initState() {
    super.initState();
    context
        .read<TaskCommentBloc>()
        .add(GetTaskCommentEvent(taskId: widget.item.id!));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(
          color: Colors.grey.shade300,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.item.content ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              widget.item.description ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 8),
            BlocBuilder<TaskCommentBloc, TaskCommentState>(
              builder: (BuildContext context, TaskCommentState state) {
                if (state is TaskCommentFetching) {
                  return Skeletonizer(child: _buildComment());
                } else if (state is TaskCommentFetched) {
                  final commentsForTask = state.comments
                      .where((comment) => comment.taskId == widget.item.id)
                      .toList();

                  if (commentsForTask.isNotEmpty) {
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: commentsForTask.map((comment) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Expanded(
                              child: Text(
                                comment.content,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black54),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    );
                  } else {
                    return _buildComment();
                  }
                } else {
                  return Text("No Comments");
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Row _buildComment() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(
            Icons.comment,
            size: 20,
          ),
          onPressed: widget.onComment,
        ),
      ],
    );
  }
}
