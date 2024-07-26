import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xFF242424),
      unselectedItemColor: Color(0xFFF8F8F8),
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Color(0xFF242424),
        fontWeight: FontWeight.w700,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFFB7935F),
      onPrimary: Colors.white,
      secondary: const Color(0xFFB7935F),
      onSecondary: const Color(0xFF242424),
      seedColor: const Color(
        0xFFB7935F,
      ),
    ),
  );
}
