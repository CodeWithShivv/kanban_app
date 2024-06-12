import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/boards/add_board/board_bloc.dart';
import 'package:kanban_app/blocs/boards/add_board/board_event.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_bloc.dart';
import 'package:kanban_app/blocs/boards/boards_list/board_list_state.dart';
import 'package:kanban_app/blocs/theme/theme_bloc.dart';
import 'package:kanban_app/blocs/theme/theme_state.dart';
import 'package:kanban_app/presentation/widgets/add_board.dart';
import 'package:kanban_app/router/app_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class BoardView extends StatelessWidget {
  const BoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BoardsListBloc, BoardsListState>(
      builder: (BuildContext context, state) {
        if (state is BoardsListLoading) {
          return _skeletonBody(context);
        } else if (state is BoardsListLoaded) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            builder: (BuildContext context, theme) => Scaffold(
              resizeToAvoidBottomInset: true,
              backgroundColor: theme.themeData.colorScheme.surface,
              appBar: AppBar(
                backgroundColor: theme.themeData.colorScheme.surface,
                title: Text(
                  "Boards",
                  style: TextStyle(fontSize: 15),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AddBoard();
                        },
                      );
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              body: ListView.builder(
                itemCount: state.boardsList.length,
                itemBuilder: (context, index) {
                  final board = state.boardsList[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: SizedBox(
                      height: 50,
                      child: ListTile(
                        trailing: IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          onPressed: () {
                            if (state.boardsList[index].id != null) {
                              BlocProvider.of<BoardBloc>(context).add(
                                  DeleteBoardEvent(
                                      state.boardsList[index].id!));
                            }
                          },
                        ),
                        onTap: () {
                          goRouter.go('/board-item',
                              extra: state.boardsList[index]);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        tileColor: theme.themeData.colorScheme.background,
                        title: Text(
                          board.name ?? '',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is BoardsListError) {
          return Scaffold(
            body: Center(
              child: Text('Error: ${state.errorMessage}'),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Scaffold _skeletonBody(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AddBoard();
                  },
                );
              },
              icon: Icon(Icons.add),
            ),
          ],
          title: Text(
            "Boards",
            style: TextStyle(fontSize: 15),
          ),
          backgroundColor: BlocProvider.of<ThemeBloc>(context)
              .state
              .themeData
              .colorScheme
              .surface,
        ),
        body: Skeletonizer(
          enabled: true,
          child: ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ListTile(
                  tileColor: BlocProvider.of<ThemeBloc>(context)
                      .state
                      .themeData
                      .colorScheme
                      .background,
                  title: Text('Item number $index as title'),
                  subtitle: const Text('Subtitle here'),
                  trailing: const Icon(Icons.ac_unit),
                ),
              );
            },
          ),
        ));
  }
}
