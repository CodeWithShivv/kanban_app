import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_app/blocs/theme/theme_event.dart';
import 'package:kanban_app/blocs/theme/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState.lightTheme);

  Stream<ThemeState> mapEventToState(ThemeEvent event) async* {
    switch (event) {
      case ThemeEvent.toggleDark:
        yield ThemeState.darkTheme;
        break;
      case ThemeEvent.toggleLight:
        yield ThemeState.lightTheme;
        break;
    }
  }
}
