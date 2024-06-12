import 'package:flutter/material.dart';

class ThemeState {
  final ThemeData themeData;

  ThemeState(this.themeData);

  static const Color _primaryColor = Colors.blue;
  static const Color _lightPrimaryColor = Color(0xFF1565C0);

  static const Color _backgroundColor = Color(0xFF212121);
  static const Color _lightBackgroundColor = Colors.white;

  static const Color _scaffoldBackgroundColor = Color(0xFF121212);
  static const Color _lightScaffoldBackgroundColor = Color(0xFFEEEEEE);

  static const Color _appBarBackgroundColor = Color(0xFF212121);
  static const Color _lightAppBarBackgroundColor = _primaryColor;

  static const Color _textColor = Colors.white; // Light color for dark theme
  static const Color _lightTextColor = Colors.black;

  static ThemeState get darkTheme => ThemeState(ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          primary: _primaryColor,
          background: _backgroundColor,
          surface: _scaffoldBackgroundColor,
          onPrimary: _textColor,
        ),
        scaffoldBackgroundColor: _scaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: _appBarBackgroundColor,
        ),
      ));

  static ThemeState get lightTheme => ThemeState(ThemeData.light().copyWith(
        colorScheme: ColorScheme.light(
          primary: _lightPrimaryColor,
          background: _lightBackgroundColor,
          surface: _lightScaffoldBackgroundColor,
          onPrimary: _lightTextColor,
        ),
        scaffoldBackgroundColor: _lightScaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: _lightAppBarBackgroundColor,
        ),
      ));
}
