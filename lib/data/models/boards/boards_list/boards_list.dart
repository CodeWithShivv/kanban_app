import 'package:freezed_annotation/freezed_annotation.dart';

part 'boards_list.freezed.dart';
part 'boards_list.g.dart';

@freezed
class BoardsList with _$BoardsList {
  const factory BoardsList({
    String? id,
    String? parentId,
    int? order,
    String? color,
    String? name,
    int? commentCount,
    bool? isShared,
    bool? isFavorite,
    bool? isInboxProject,
    bool? isTeamInbox,
    String? url,
    String? viewStyle,
  }) = _BoardsList;

  factory BoardsList.fromJson(Map<String, dynamic> json) =>
      _$BoardsListFromJson(json);
}
