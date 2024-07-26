import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.jpg",
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
