import 'package:equatable/equatable.dart';
import 'package:kanban_app/data/models/boards/board_task_comment/board_task_comment.dart';

abstract class TaskCommentState extends Equatable {
  const TaskCommentState();

  @override
  List<Object> get props => [];
}

class TaskCommentInitial extends TaskCommentState {}

class TaskCommentFetching extends TaskCommentState {}

class TaskCommentFetched extends TaskCommentState {
  final List<TaskComment> comments;

  const TaskCommentFetched(this.comments);

  @override
  List<Object> get props => [comments];
}

class TaskCommentFetchedError extends TaskCommentState {
  final String message;

  const TaskCommentFetchedError(this.message);

  @override
  List<Object> get props => [message];
}
