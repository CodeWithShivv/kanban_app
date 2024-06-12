// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_task_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskComment _$TaskCommentFromJson(Map<String, dynamic> json) {
  return _TaskComment.fromJson(json);
}

/// @nodoc
mixin _$TaskComment {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  String get taskId => throw _privateConstructorUsedError;
  @JsonKey(name: 'project_id')
  String? get projectId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'posted_at')
  DateTime get postedAt => throw _privateConstructorUsedError;
  String? get attachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCommentCopyWith<TaskComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCommentCopyWith<$Res> {
  factory $TaskCommentCopyWith(
          TaskComment value, $Res Function(TaskComment) then) =
      _$TaskCommentCopyWithImpl<$Res, TaskComment>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'project_id') String? projectId,
      String content,
      @JsonKey(name: 'posted_at') DateTime postedAt,
      String? attachment});
}

/// @nodoc
class _$TaskCommentCopyWithImpl<$Res, $Val extends TaskComment>
    implements $TaskCommentCopyWith<$Res> {
  _$TaskCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? projectId = freezed,
    Object? content = null,
    Object? postedAt = null,
    Object? attachment = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskCommentImplCopyWith<$Res>
    implements $TaskCommentCopyWith<$Res> {
  factory _$$TaskCommentImplCopyWith(
          _$TaskCommentImpl value, $Res Function(_$TaskCommentImpl) then) =
      __$$TaskCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'task_id') String taskId,
      @JsonKey(name: 'project_id') String? projectId,
      String content,
      @JsonKey(name: 'posted_at') DateTime postedAt,
      String? attachment});
}

/// @nodoc
class __$$TaskCommentImplCopyWithImpl<$Res>
    extends _$TaskCommentCopyWithImpl<$Res, _$TaskCommentImpl>
    implements _$$TaskCommentImplCopyWith<$Res> {
  __$$TaskCommentImplCopyWithImpl(
      _$TaskCommentImpl _value, $Res Function(_$TaskCommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? taskId = null,
    Object? projectId = freezed,
    Object? content = null,
    Object? postedAt = null,
    Object? attachment = freezed,
  }) {
    return _then(_$TaskCommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      postedAt: null == postedAt
          ? _value.postedAt
          : postedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attachment: freezed == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskCommentImpl implements _TaskComment {
  const _$TaskCommentImpl(
      {required this.id,
      @JsonKey(name: 'task_id') required this.taskId,
      @JsonKey(name: 'project_id') this.projectId,
      required this.content,
      @JsonKey(name: 'posted_at') required this.postedAt,
      this.attachment});

  factory _$TaskCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskCommentImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'task_id')
  final String taskId;
  @override
  @JsonKey(name: 'project_id')
  final String? projectId;
  @override
  final String content;
  @override
  @JsonKey(name: 'posted_at')
  final DateTime postedAt;
  @override
  final String? attachment;

  @override
  String toString() {
    return 'TaskComment(id: $id, taskId: $taskId, projectId: $projectId, content: $content, postedAt: $postedAt, attachment: $attachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, taskId, projectId, content, postedAt, attachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCommentImplCopyWith<_$TaskCommentImpl> get copyWith =>
      __$$TaskCommentImplCopyWithImpl<_$TaskCommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskCommentImplToJson(
      this,
    );
  }
}

abstract class _TaskComment implements TaskComment {
  const factory _TaskComment(
      {required final String id,
      @JsonKey(name: 'task_id') required final String taskId,
      @JsonKey(name: 'project_id') final String? projectId,
      required final String content,
      @JsonKey(name: 'posted_at') required final DateTime postedAt,
      final String? attachment}) = _$TaskCommentImpl;

  factory _TaskComment.fromJson(Map<String, dynamic> json) =
      _$TaskCommentImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'task_id')
  String get taskId;
  @override
  @JsonKey(name: 'project_id')
  String? get projectId;
  @override
  String get content;
  @override
  @JsonKey(name: 'posted_at')
  DateTime get postedAt;
  @override
  String? get attachment;
  @override
  @JsonKey(ignore: true)
  _$$TaskCommentImplCopyWith<_$TaskCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
