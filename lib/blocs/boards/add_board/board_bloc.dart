import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/data/repositories/board_repository.dart';
import 'package:kanban_app/blocs/boards/add_board/board_event.dart';
import 'package:kanban_app/blocs/boards/add_board/board_state.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_bloc.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_state.dart';
import 'package:kanban_app/data/services/event_tracker/event_tracker.dart';
import 'package:kanban_app/dependency_locator.dart';

import '../boards_list/board_list_event.dart';

class BoardBloc extends Bloc<BoardEvent, BoardState> {
  final BoardsRepository boardsRepository;
  final BoardsListBloc boardsListBloc;

  BoardBloc({
    required this.boardsRepository,
    required this.boardsListBloc,
  }) : super(BoardInitial()) {
    on<AddBoardEvent>(_onAddBoard);
    on<DeleteBoardEvent>(_onDeleteBoard);
  }

  Future<void> _onAddBoard(
      AddBoardEvent event, Emitter<BoardState> emit) async {
    getIt<EventTracker>().logCreateBoard(event.boardBody);
    emit(BoardAdding());
    try {
      final newBoard = await boardsRepository.addBoard(body: event.boardBody);
      emit(BoardAdded(newBoard));
      boardsListBloc.add(FetchBoardsList());
    } catch (e) {
      emit(BoardAddingError('Failed to add board: $e'));
    }
  }

  Future<void> _onDeleteBoard(
      DeleteBoardEvent event, Emitter<BoardState> emit) async {
    getIt<EventTracker>().logDeleteBoard(event.id);
    emit(BoardDeleting());
    try {
      final bool boardDeleted =
          await boardsRepository.deleteBoard(id: event.id);
      if (boardDeleted) {
        emit(BoardDeleted());
        boardsListBloc.add(FetchBoardsList());
      }
    } catch (e) {
      emit(BoardDeletingError('Failed to delete board: $e'));
    }
  }
}
