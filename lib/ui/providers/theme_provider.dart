import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  static const String isDarkTheme = "theme";
  bool isDark = true;
  final SharedPreferences prefs;

  ThemeProvider(this.prefs) {
    readTheme();
  }

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    savedTheme();
    notifyListeners();
  }

  bool isDarkEnabled() {
    // if(currentTheme == ThemeMode.dark){
    //   return true;
    // }
    return currentTheme == ThemeMode.dark;
  }

  void readTheme() {
    isDark = prefs.getBool(isDarkTheme) ?? false;
    currentTheme = isDark ? ThemeMode.dark : ThemeMode.light;
  }

  // cache data in memory
  void savedTheme() {
    prefs.setBool(isDarkTheme, isDarkEnabled());
  }

  static ThemeProvider get(BuildContext context) {
    // this function => return theme provider object
    return Provider.of<ThemeProvider>(context);
  }
}
