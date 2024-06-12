import 'package:kanban_app/data/models/boards/boards_list/boards_list.dart';

abstract class BoardsListState {}

class BoardsListInitial extends BoardsListState {}

class BoardsListLoading extends BoardsListState {}

class BoardsListLoaded extends BoardsListState {
  final List<BoardsList> boardsList;

  BoardsListLoaded(this.boardsList);
}

class BoardsListError extends BoardsListState {
  final String errorMessage;

  BoardsListError(this.errorMessage);
}
