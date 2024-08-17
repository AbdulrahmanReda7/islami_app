import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';
import 'package:islami_app/ui/providers/theme_provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "/";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = ThemeProvider.get(context);
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
    return Scaffold(
      body: Image.asset(
        themeProvider.currentTheme == ThemeMode.light
            ? "assets/images/splash.jpg"
            : "assets/images/dark_splash.png",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
