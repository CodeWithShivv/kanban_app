// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boards_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoardsListImpl _$$BoardsListImplFromJson(Map<String, dynamic> json) =>
    _$BoardsListImpl(
      id: json['id'] as String?,
      parentId: json['parentId'] as String?,
      order: (json['order'] as num?)?.toInt(),
      color: json['color'] as String?,
      name: json['name'] as String?,
      commentCount: (json['commentCount'] as num?)?.toInt(),
      isShared: json['isShared'] as bool?,
      isFavorite: json['isFavorite'] as bool?,
      isInboxProject: json['isInboxProject'] as bool?,
      isTeamInbox: json['isTeamInbox'] as bool?,
      url: json['url'] as String?,
      viewStyle: json['viewStyle'] as String?,
    );

Map<String, dynamic> _$$BoardsListImplToJson(_$BoardsListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'order': instance.order,
      'color': instance.color,
      'name': instance.name,
      'commentCount': instance.commentCount,
      'isShared': instance.isShared,
      'isFavorite': instance.isFavorite,
      'isInboxProject': instance.isInboxProject,
      'isTeamInbox': instance.isTeamInbox,
      'url': instance.url,
      'viewStyle': instance.viewStyle,
    };
