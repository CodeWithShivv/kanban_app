import 'package:equatable/equatable.dart';

abstract class TaskCommentEvent extends Equatable {
  const TaskCommentEvent();

  @override
  List<Object> get props => [];
}

class GetTaskCommentEvent extends TaskCommentEvent {
  final String taskId;

  const GetTaskCommentEvent({required this.taskId});

  @override
  List<Object> get props => [taskId];
}
