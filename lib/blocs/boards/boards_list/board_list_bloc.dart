import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/data/repositories/board_repository.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_event.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_state.dart';

class BoardsListBloc extends Bloc<BoardsListEvent, BoardsListState> {
  final BoardsRepository boardsRepository;

  BoardsListBloc({required this.boardsRepository})
      : super(BoardsListInitial()) {
    on<FetchBoardsList>(_onFetchBoardsList);
  }

  Future<void> _onFetchBoardsList(
    FetchBoardsList event,
    Emitter<BoardsListState> emit,
  ) async {
    emit(BoardsListLoading());
    try {
      final boardsList = await boardsRepository.fetchBoardsList();

      emit(BoardsListLoaded(boardsList));
    } catch (e) {
      emit(BoardsListError('Failed to fetch boards list: $e'));
    }
  }
}
