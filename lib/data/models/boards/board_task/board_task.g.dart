// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardTaskImpl _$$BoardTaskImplFromJson(Map<String, dynamic> json) =>
    _$BoardTaskImpl(
      id: json['id'] as String?,
      assignerId: json['assigner_id'] as String?,
      assigneeId: json['assignee_id'] as String?,
      projectId: json['project_id'] as String?,
      sectionId: json['section_id'] as String?,
      parentId: json['parent_id'] as String?,
      order: (json['task_order'] as num?)?.toInt(),
      content: json['content'] as String?,
      description: json['description'] as String?,
      isCompleted: json['is_completed'] as bool?,
      labels:
          (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
      priority: (json['task_priority'] as num?)?.toInt(),
      commentCount: (json['comment_count'] as num?)?.toInt(),
      creatorId: json['created_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      due: json['due_date'] == null
          ? null
          : DateTime.parse(json['due_date'] as String),
      url: json['url'] as String?,
      duration: (json['task_duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BoardTaskImplToJson(_$BoardTaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assigner_id': instance.assignerId,
      'assignee_id': instance.assigneeId,
      'project_id': instance.projectId,
      'section_id': instance.sectionId,
      'parent_id': instance.parentId,
      'task_order': instance.order,
      'content': instance.content,
      'description': instance.description,
      'is_completed': instance.isCompleted,
      'labels': instance.labels,
      'task_priority': instance.priority,
      'comment_count': instance.commentCount,
      'created_by': instance.creatorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'due_date': instance.due?.toIso8601String(),
      'url': instance.url,
      'task_duration': instance.duration,
    };
