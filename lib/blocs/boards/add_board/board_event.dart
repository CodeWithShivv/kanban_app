abstract class BoardEvent {}

class FetchBoards extends BoardEvent {}

class AddBoardEvent extends BoardEvent {
  Map<String, dynamic> boardBody;

  AddBoardEvent(this.boardBody);
}

class DeleteBoardEvent extends BoardEvent {
  String id;
  DeleteBoardEvent(this.id);
}

class FetchExisitingBoardEvent extends BoardEvent {}
