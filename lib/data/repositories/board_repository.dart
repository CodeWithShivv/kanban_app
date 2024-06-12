import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:kanban_app/data/models/boards/boards_list/boards_list.dart';
import 'package:kanban_app/data/services/error_reporter/error_reporter.dart';
import 'package:kanban_app/data/services/event_tracker/event_tracker.dart';
import 'package:kanban_app/data/services/network/end_points.dart';
import 'package:kanban_app/data/services/network/network_service.dart';
import 'package:kanban_app/dependency_locator.dart';

class BoardsRepository {
  final NetworkService networkService;

  BoardsRepository({required this.networkService});

  Future<List<BoardsList>> fetchBoardsList() async {
    try {
      final response = await networkService.getRequest(EndPoints.projects);

      if (response.statusCode == 200) {
        final List<dynamic> jsonData = response.data;

        final List<BoardsList> boardsList =
            jsonData.map((json) => BoardsList.fromJson(json)).toList();

        return boardsList;
      } else {
        throw Exception('Failed to fetch boards list: ${response.statusCode}');
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to fetch boards list: $e');
    }
  }

  Future<BoardsList> addBoard({required body}) async {
    try {
      final response =
          await networkService.postRequest(EndPoints.projects, body);

      if (response.statusCode == 200) {
        final jsonData = response.data;

        final BoardsList boardsList = BoardsList.fromJson(jsonData);

        return boardsList;
      } else {
        throw Exception('Failed to fetch boards list: ${response.statusCode}');
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to fetch boards list: $e');
    }
  }

  Future<bool> deleteBoard({required String id}) async {
    try {
      final response = await networkService.deleteRequest(
        "${EndPoints.projects}/$id",
      );

      if (response.statusCode == 204) {
        return true;
      } else {
        return false;
      }
    } catch (e, s) {
      getIt<ErrorReporter>().reportError(e, s);
      throw Exception('Failed to fetch boards list: $e');
    }
  }
}
