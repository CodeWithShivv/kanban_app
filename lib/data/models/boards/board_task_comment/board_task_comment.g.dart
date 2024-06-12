// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_task_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskCommentImpl _$$TaskCommentImplFromJson(Map<String, dynamic> json) =>
    _$TaskCommentImpl(
      id: json['id'] as String,
      taskId: json['task_id'] as String,
      projectId: json['project_id'] as String?,
      content: json['content'] as String,
      postedAt: DateTime.parse(json['posted_at'] as String),
      attachment: json['attachment'] as String?,
    );

Map<String, dynamic> _$$TaskCommentImplToJson(_$TaskCommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'task_id': instance.taskId,
      'project_id': instance.projectId,
      'content': instance.content,
      'posted_at': instance.postedAt.toIso8601String(),
      'attachment': instance.attachment,
    };
