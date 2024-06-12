import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:kanban_app/data/models/boards/board_task/board_task.dart';
import 'package:kanban_app/data/models/boards/board_task_comment/board_task_comment.dart';
import 'package:kanban_app/data/services/error_reporter/error_reporter.dart';
import 'package:kanban_app/data/services/network/end_points.dart';
import 'package:kanban_app/data/services/network/network_service.dart';
import 'package:kanban_app/dependency_locator.dart';

class TaskRepository {
  final NetworkService networkService;

  TaskRepository({required this.networkService});

  Future<List<BoardTask>> fetchTasks() async {
    try {
      final response = await networkService.getRequest(EndPoints.tasks);

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data;

        final List<BoardTask> tasks =
            jsonData.map((json) => BoardTask.fromJson(json)).toList();

        return tasks;
      } else {
        throw Exception('Failed to fetch tasks: ${response.statusCode}');
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to fetch tasks: $e');
    }
  }

  Future<BoardTask> addTask({required Map<String, dynamic> body}) async {
    try {
      final response = await networkService.postRequest(EndPoints.tasks, body);

      if (response.statusCode == 200) {
        final jsonData = response.data;

        final BoardTask task = BoardTask.fromJson(jsonData);

        return task;
      } else {
        throw Exception('Failed to add task: ${response.statusCode}');
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to add task: $e');
    }
  }

  Future<BoardTask> updateTask(
      {required String id, required Map<String, dynamic> body}) async {
    try {
      final response =
          await networkService.postRequest("${EndPoints.tasks}/$id", body);
      if (response.statusCode == 200) {
        final jsonData = response.data;

        final BoardTask task = BoardTask.fromJson(jsonData);

        return task;
      } else {
        throw Exception('Failed to update task: ${response.statusCode}');
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to update task: $e');
    }
  }

  Future<bool> addTaskComment({required Map<String, dynamic> body}) async {
    try {
      final response =
          await networkService.postRequest("${EndPoints.comment}", body);

      if (response.statusCode == 204) {
        return true;
      } else {
        return false;
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to delete task: $e');
    }
  }

  Future<List<TaskComment>> getComment({required String id}) async {
    try {
      final response =
          await networkService.getRequest("${EndPoints.comment}/?task_id=$id");
      if (response.statusCode == 200) {
        final jsonData = response.data;

        if (jsonData is List) {
          final List<TaskComment> task = jsonData
              .map((json) => TaskComment.fromJson(json as Map<String, dynamic>))
              .toList();

          return task;
        } else {
          throw Exception('Unexpected JSON format');
        }
      } else {
        throw Exception(
            'Failed to fetch task comments: ${response.statusCode}');
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to fetch task comments: $e');
    }
  }

  Future<Map<String, List<TaskComment>>> fetchCommentsForTasks(
      List<String> taskIds) async {
    final Map<String, List<TaskComment>> commentsMap = {};

    for (String taskId in taskIds) {
      final List<TaskComment> comments = await getComment(id: taskId);
      commentsMap[taskId] = comments;
    }

    return commentsMap;
  }
}
