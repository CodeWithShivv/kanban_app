import 'package:freezed_annotation/freezed_annotation.dart';
part 'board_task.freezed.dart';
part 'board_task.g.dart';

@freezed
class BoardTask with _$BoardTask {
  const factory BoardTask({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'assigner_id') String? assignerId,
    @JsonKey(name: 'assignee_id') String? assigneeId,
    @JsonKey(name: 'project_id') String? projectId,
    @JsonKey(name: 'section_id') String? sectionId,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'task_order') int? order,
    String? content,
    String? description,
    @JsonKey(name: 'is_completed') bool? isCompleted,
    List<String>? labels,
    @JsonKey(name: 'task_priority') int? priority,
    @JsonKey(name: 'comment_count') int? commentCount,
    @JsonKey(name: 'created_by') String? creatorId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'due_date') DateTime? due,
    String? url,
    @JsonKey(name: 'task_duration') int? duration,
  }) = _BoardTask;

  factory BoardTask.fromJson(Map<String, dynamic> json) =>
      _$BoardTaskFromJson(json);
}
