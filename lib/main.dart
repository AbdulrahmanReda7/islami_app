import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/ui/home/hadeth/hadeth_details.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/home/quran/sura_details.dart';
import 'package:islami_app/ui/providers/locale_provider.dart';
import 'package:islami_app/ui/providers/theme_provider.dart';
import 'package:islami_app/ui/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/theme/my_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(sharedPreferences),
    ),
    ChangeNotifierProvider(
      create: (_) => LocaleProvider(sharedPreferences),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = ThemeProvider.get(context);
    final LocaleProvider localeProvider = LocaleProvider.get(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        SuraDetails.routeName: (_) => const SuraDetails(),
        HadethDetails.routeName: (_) => const HadethDetails(),
      },
      darkTheme: MyThemeData.darkTheme,
      themeMode: themeProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(localeProvider.currentLocale),
    );
  }
}
