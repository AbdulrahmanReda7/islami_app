import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondary = Color(0xFFFACC1D);
  static const bool isDark = true;

  static final ThemeData lightTheme = ThemeData(
    cardTheme: const CardTheme(
      color: Colors.white,
      surfaceTintColor: null,
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        fontFamily: "elmessiri",
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "elmessiri",
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: "elmessiri",
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "elmessiri",
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: lightPrimary,
      selectedItemColor: Color(0xFF242424),
      unselectedItemColor: Color(0xFFF8F8F8),
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
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
  static final ThemeData darkTheme = ThemeData(
    cardTheme: const CardTheme(
      color: darkPrimary,
      surfaceTintColor: null,
    ),
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w500,
        fontFamily: "elmessiri",
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "elmessiri",
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontFamily: "elmessiri",
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontFamily: "elmessiri",
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: darkPrimary,
      selectedItemColor: darkSecondary,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 32,
      ),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      primary: darkPrimary,
      onPrimary: Colors.white,
      secondary: darkSecondary,
      onSecondary: const Color(0xFF242424),
      seedColor: darkPrimary,
    ),
  );
}
