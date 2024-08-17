import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDarkEnabled() {
    // if(currentTheme == ThemeMode.dark){
    //   return true;
    // }
    return currentTheme == ThemeMode.dark;
  }

  static ThemeProvider get(BuildContext context) {
    // this function => return theme provider object
    return Provider.of<ThemeProvider>(context);
  }
}
