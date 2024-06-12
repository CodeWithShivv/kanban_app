// board_list_state.dart
import '../../../data/models/boards/boards_list/boards_list.dart';

abstract class BoardState {}

class BoardInitial extends BoardState {}

class BoardLoading extends BoardState {}

class BoardLoaded extends BoardState {
  final BoardsList board;

  BoardLoaded(this.board);
}

class BoardError extends BoardState {
  final String errorMessage;

  BoardError(this.errorMessage);
}

class BoardAdding extends BoardState {}

class BoardAdded extends BoardState {
  final BoardsList newBoard;

  BoardAdded(this.newBoard);
}

class BoardAddingError extends BoardState {
  final String errorMessage;

  BoardAddingError(this.errorMessage);
}

class BoardDeleting extends BoardState {}

class BoardDeleted extends BoardState {}

class BoardDeletingError extends BoardState {
  final String errorMessage;

  BoardDeletingError(this.errorMessage);
}