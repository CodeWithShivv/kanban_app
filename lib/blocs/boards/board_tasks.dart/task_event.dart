import 'package:equatable/equatable.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object?> get props => [];
}

class TaskAddEvent extends TaskEvent {
  final Map<String, dynamic> taskBody;

  const TaskAddEvent(this.taskBody);

  @override
  List<Object?> get props => [taskBody];
}

class TaskUpdateEvent extends TaskEvent {
  final Map<String, dynamic> taskBody;
  final String boardId;
  const TaskUpdateEvent(this.taskBody, this.boardId);
}

class FetchTasksEvent extends TaskEvent {
  @override
  List<Object?> get props => [];
}

class AddTaskCommentEvent extends TaskEvent {
  final Map<String, dynamic> taskBody;

  const AddTaskCommentEvent(this.taskBody);
}
