import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/my_theme.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    bool isDark = MyThemeData.isDark;
    return Stack(
      children: [
        Image.asset(
          isDark ? "assets/images/dark_bg.png" : "assets/images/main_bg.jpg",
          fit: BoxFit.fill,
        ),
        body,
      ],
    );
  }
}
