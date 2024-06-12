import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:kanban_app/data/models/boards/board_task_comment/board_task_comment.dart';
import 'package:kanban_app/data/repositories/task_repository.dart';

abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object?> get props => [];
}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TaskLoaded extends TaskState {
  final List<BoardTask> tasks;

  const TaskLoaded(this.tasks);

  @override
  List<Object?> get props => [tasks];
}

class TaskError extends TaskState {
  final String message;

  const TaskError(this.message);

  @override
  List<Object?> get props => [message];
}

class TaskAdding extends TaskState {}

class TaskAdded extends TaskState {}

class TaskAddingError extends TaskState {
  final String message;
  TaskAddingError(this.message);
}

class TaskUpdating extends TaskState {}

class TaskUpdated extends TaskState {}

class TaskUpdatingError extends TaskState {
  final String message;
  TaskUpdatingError(this.message);
}

class TaskCommentAdding extends TaskState {}

class TaskCommentAdded extends TaskState {}

class TaskCommentAddingError extends TaskState {
  final String message;

  const TaskCommentAddingError(this.message);

  @override
  List<Object?> get props => [message];
}
