import 'package:firebase_analytics/firebase_analytics.dart';

class EventTracker {
  static final EventTracker _instance = EventTracker._internal();
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  factory EventTracker() {
    return _instance;
  }

  EventTracker._internal();

  void logEvent(String name, Map<String, Object> parameters) {
    _analytics.logEvent(name: name, parameters: parameters);
  }

  void logCreateBoard(Map<String, dynamic> parameters) {
    logEvent('create_board', _convertToMapObject(parameters));
  }

  void logDeleteBoard(String id) {
    logEvent('delete_board', {'board_id': id});
  }

  void logCreateTask(Map<String, dynamic> parameters) {
    logEvent('create_task', _convertToMapObject(parameters));
  }

  void logAddComment(Map<String, dynamic> parameters) {
    logEvent('add_comment', _convertToMapObject(parameters));
  }

  void logUpdateTask(Map<String, dynamic> parameters) {
    logEvent('update_task', _convertToMapObject(parameters));
  }

  void logChangeItemPosition(
      String boardName, String taskName, String from, String to) {
    logEvent('change_item_position', {
      'board_name': boardName,
      'task_name': taskName,
      'from': from,
      'to': to
    });
  }

  Map<String, Object> _convertToMapObject(Map<String, dynamic> map) {
    return map.map((key, value) => MapEntry(key, value as Object));
  }
}
