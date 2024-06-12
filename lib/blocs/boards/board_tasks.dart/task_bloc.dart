import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/data/models/boards/board_task_comment/board_task_comment.dart';
import 'package:kanban_app/data/repositories/task_repository.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_event.dart';
import 'package:kanban_app/blocs/boards/board_tasks.dart/task_state.dart';
import 'package:kanban_app/data/services/event_tracker/event_tracker.dart';
import 'package:kanban_app/dependency_locator.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository taskRepository;

  TaskBloc({required this.taskRepository}) : super(TaskInitial()) {
    on<TaskAddEvent>(_onAddTask);
    on<FetchTasksEvent>(_onFetchTasks);
    on<TaskUpdateEvent>(_onUpdateTasks);
    on<AddTaskCommentEvent>(_onAddTaskComment);
  }

  Future<void> _onAddTask(TaskAddEvent event, Emitter<TaskState> emit) async {
    getIt<EventTracker>().logCreateTask(event.taskBody);
    emit(TaskAdding());
    try {
      await taskRepository.addTask(body: event.taskBody);

      emit(TaskAdded());
      add(FetchTasksEvent());
    } catch (e) {
      emit(TaskAddingError('Failed to add task: $e'));
    }
  }

  Future<void> _onFetchTasks(
      FetchTasksEvent event, Emitter<TaskState> emit) async {
    emit(TaskLoading());
    try {
      final tasks = await taskRepository.fetchTasks();

      emit(TaskLoaded(tasks));
    } catch (e) {
      emit(TaskError('Failed to fetch tasks: $e'));
    }
  }

  Future<void> _onUpdateTasks(
      TaskUpdateEvent event, Emitter<TaskState> emit) async {
    final updatedTaskBody = Map<String, dynamic>.from(event.taskBody)
      ..addEntries([MapEntry('board_id', event.boardId)]);

    getIt<EventTracker>().logUpdateTask(updatedTaskBody);

    try {
      await taskRepository.updateTask(id: event.boardId, body: event.taskBody);
    } catch (e) {
      emit(TaskUpdatingError('Failed to update tasks: $e'));
    }
  }

  Future<void> _onAddTaskComment(
      AddTaskCommentEvent event, Emitter<TaskState> emit) async {
    getIt<EventTracker>().logAddComment(event.taskBody);
    emit(TaskCommentAdding());
    try {
      await taskRepository.addTaskComment(body: event.taskBody);
      add(FetchTasksEvent());
    } catch (e) {
      emit(TaskCommentAddingError('Failed to add task comment: $e'));
    }
  }
}
