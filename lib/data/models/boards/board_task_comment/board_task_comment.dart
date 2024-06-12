import 'package:freezed_annotation/freezed_annotation.dart';

part 'board_task_comment.freezed.dart';
part 'board_task_comment.g.dart';

@freezed
class TaskComment with _$TaskComment {
  const factory TaskComment({
    required String id,
    @JsonKey(name: 'task_id') required String taskId,
    @JsonKey(name: 'project_id') String? projectId,
    required String content,
    @JsonKey(name: 'posted_at') required DateTime postedAt,
    String? attachment,
  }) = _TaskComment;

  factory TaskComment.fromJson(Map<String, dynamic> json) =>
      _$TaskCommentFromJson(json);
}
