import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/board_task_comment/board_task_comment_event.dart';
import 'package:kanban_app/blocs/boards/board_task_comment/board_task_comment_state.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_event.dart';
import 'package:kanban_app/data/models/boards/board_task_comment/board_task_comment.dart';
import 'package:kanban_app/data/repositories/task_repository.dart';
import 'package:kanban_app/data/services/event_tracker/event_tracker.dart';
import 'package:kanban_app/dependency_locator.dart';

class TaskCommentBloc extends Bloc<TaskCommentEvent, TaskCommentState> {
  final TaskRepository taskRepository;

  TaskCommentBloc({required this.taskRepository})
      : super(TaskCommentInitial()) {
    on<GetTaskCommentEvent>(_onTaskCommentFetched);
  }

  Future<void> _onTaskCommentFetched(
      GetTaskCommentEvent event, Emitter<TaskCommentState> emit) async {
    emit(TaskCommentFetching());
    try {
      List<TaskComment> comments =
          await taskRepository.getComment(id: event.taskId);
      emit(TaskCommentFetched(comments));
    } catch (e) {
      emit(TaskCommentFetchedError('Failed to fetch task comment: $e'));
    }
  }
}
