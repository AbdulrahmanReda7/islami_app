import 'package:flutter/material.dart';

class DefaultScreen extends StatelessWidget {
  Widget body;

  DefaultScreen({required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/main_bg.jpg",
          fit: BoxFit.fill,
        ),
        body,
      ],
    );
  }
}
