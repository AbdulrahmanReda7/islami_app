import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  String currentLocale = "en";
  static const String langKey = "lang";
  final SharedPreferences prefs;

  LocaleProvider(this.prefs) {
    readLocale();
  } // dependency injection => injection constructor

  void changeLocale(String newLocale) {
    currentLocale = newLocale;
    savedLocale();
    notifyListeners();
  }

  void readLocale() {
    currentLocale = prefs.getString(langKey) ?? "en";
  }

  void savedLocale() {
    prefs.setString(langKey, currentLocale);
  }

  static LocaleProvider get(BuildContext context) {
    // this function => return locale provider object
    return Provider.of<LocaleProvider>(context);
  }
}
