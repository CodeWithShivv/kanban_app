// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BoardTask _$BoardTaskFromJson(Map<String, dynamic> json) {
  return _BoardTask.fromJson(json);
}

/// @nodoc
mixin _$BoardTask {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigner_id')
  String? get assignerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignee_id')
  String? get assigneeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'section_id')
  String? get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_order')
  int? get order => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool? get isCompleted => throw _privateConstructorUsedError;
  List<String>? get labels => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_priority')
  int? get priority => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String? get creatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  DateTime? get due => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_duration')
  int? get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardTaskCopyWith<BoardTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardTaskCopyWith<$Res> {
  factory $BoardTaskCopyWith(BoardTask value, $Res Function(BoardTask) then) =
      _$BoardTaskCopyWithImpl<$Res, BoardTask>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(name: 'task_duration') int? duration});
}

/// @nodoc
class _$BoardTaskCopyWithImpl<$Res, $Val extends BoardTask>
    implements $BoardTaskCopyWith<$Res> {
  _$BoardTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? assignerId = freezed,
    Object? assigneeId = freezed,
    Object? projectId = freezed,
    Object? sectionId = freezed,
    Object? parentId = freezed,
    Object? order = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
    Object? labels = freezed,
    Object? priority = freezed,
    Object? commentCount = freezed,
    Object? creatorId = freezed,
    Object? createdAt = freezed,
    Object? due = freezed,
    Object? url = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      assignerId: freezed == assignerId
          ? _value.assignerId
          : assignerId // ignore: cast_nullable_to_non_nullable
              as String?,
      assigneeId: freezed == assigneeId
          ? _value.assigneeId
          : assigneeId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      labels: freezed == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoardTaskImplCopyWith<$Res>
    implements $BoardTaskCopyWith<$Res> {
  factory _$$BoardTaskImplCopyWith(
          _$BoardTaskImpl value, $Res Function(_$BoardTaskImpl) then) =
      __$$BoardTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
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
      @JsonKey(name: 'task_duration') int? duration});
}

/// @nodoc
class __$$BoardTaskImplCopyWithImpl<$Res>
    extends _$BoardTaskCopyWithImpl<$Res, _$BoardTaskImpl>
    implements _$$BoardTaskImplCopyWith<$Res> {
  __$$BoardTaskImplCopyWithImpl(
      _$BoardTaskImpl _value, $Res Function(_$BoardTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? assignerId = freezed,
    Object? assigneeId = freezed,
    Object? projectId = freezed,
    Object? sectionId = freezed,
    Object? parentId = freezed,
    Object? order = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? isCompleted = freezed,
    Object? labels = freezed,
    Object? priority = freezed,
    Object? commentCount = freezed,
    Object? creatorId = freezed,
    Object? createdAt = freezed,
    Object? due = freezed,
    Object? url = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$BoardTaskImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      assignerId: freezed == assignerId
          ? _value.assignerId
          : assignerId // ignore: cast_nullable_to_non_nullable
              as String?,
      assigneeId: freezed == assigneeId
          ? _value.assigneeId
          : assigneeId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      labels: freezed == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      priority: freezed == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      due: freezed == due
          ? _value.due
          : due // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoardTaskImpl implements _BoardTask {
  const _$BoardTaskImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'assigner_id') this.assignerId,
      @JsonKey(name: 'assignee_id') this.assigneeId,
      @JsonKey(name: 'project_id') this.projectId,
      @JsonKey(name: 'section_id') this.sectionId,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'task_order') this.order,
      this.content,
      this.description,
      @JsonKey(name: 'is_completed') this.isCompleted,
      final List<String>? labels,
      @JsonKey(name: 'task_priority') this.priority,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'created_by') this.creatorId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'due_date') this.due,
      this.url,
      @JsonKey(name: 'task_duration') this.duration})
      : _labels = labels;

  factory _$BoardTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoardTaskImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'assigner_id')
  final String? assignerId;
  @override
  @JsonKey(name: 'assignee_id')
  final String? assigneeId;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  @JsonKey(name: 'section_id')
  final String? sectionId;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'task_order')
  final int? order;
  @override
  final String? content;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_completed')
  final bool? isCompleted;
  final List<String>? _labels;
  @override
  List<String>? get labels {
    final value = _labels;
    if (value == null) return null;
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'task_priority')
  final int? priority;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  @JsonKey(name: 'created_by')
  final String? creatorId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'due_date')
  final DateTime? due;
  @override
  final String? url;
  @override
  @JsonKey(name: 'task_duration')
  final int? duration;

  @override
  String toString() {
    return 'BoardTask(id: $id, assignerId: $assignerId, assigneeId: $assigneeId, projectId: $projectId, sectionId: $sectionId, parentId: $parentId, order: $order, content: $content, description: $description, isCompleted: $isCompleted, labels: $labels, priority: $priority, commentCount: $commentCount, creatorId: $creatorId, createdAt: $createdAt, due: $due, url: $url, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoardTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assignerId, assignerId) ||
                other.assignerId == assignerId) &&
            (identical(other.assigneeId, assigneeId) ||
                other.assigneeId == assigneeId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.due, due) || other.due == due) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      assignerId,
      assigneeId,
      projectId,
      sectionId,
      parentId,
      order,
      content,
      description,
      isCompleted,
      const DeepCollectionEquality().hash(_labels),
      priority,
      commentCount,
      creatorId,
      createdAt,
      due,
      url,
      duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoardTaskImplCopyWith<_$BoardTaskImpl> get copyWith =>
      __$$BoardTaskImplCopyWithImpl<_$BoardTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoardTaskImplToJson(
      this,
    );
  }
}

abstract class _BoardTask implements BoardTask {
  const factory _BoardTask(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'assigner_id') final String? assignerId,
      @JsonKey(name: 'assignee_id') final String? assigneeId,
      @JsonKey(name: 'project_id') final String? projectId,
      @JsonKey(name: 'section_id') final String? sectionId,
      @JsonKey(name: 'parent_id') final String? parentId,
      @JsonKey(name: 'task_order') final int? order,
      final String? content,
      final String? description,
      @JsonKey(name: 'is_completed') final bool? isCompleted,
      final List<String>? labels,
      @JsonKey(name: 'task_priority') final int? priority,
      @JsonKey(name: 'comment_count') final int? commentCount,
      @JsonKey(name: 'created_by') final String? creatorId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'due_date') final DateTime? due,
      final String? url,
      @JsonKey(name: 'task_duration') final int? duration}) = _$BoardTaskImpl;

  factory _BoardTask.fromJson(Map<String, dynamic> json) =
      _$BoardTaskImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'assigner_id')
  String? get assignerId;
  @override
  @JsonKey(name: 'assignee_id')
  String? get assigneeId;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  @JsonKey(name: 'section_id')
  String? get sectionId;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'task_order')
  int? get order;
  @override
  String? get content;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_completed')
  bool? get isCompleted;
  @override
  List<String>? get labels;
  @override
  @JsonKey(name: 'task_priority')
  int? get priority;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  @JsonKey(name: 'created_by')
  String? get creatorId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'due_date')
  DateTime? get due;
  @override
  String? get url;
  @override
  @JsonKey(name: 'task_duration')
  int? get duration;
  @override
  @JsonKey(ignore: true)
  _$$BoardTaskImplCopyWith<_$BoardTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
