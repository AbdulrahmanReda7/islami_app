import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String title,
    Color backgroundColor, {
    String? iconPath,
    Icon? mainIcon,
  }) : super(
          icon: mainIcon ??
              ImageIcon(
                AssetImage(
                  iconPath!,
                ),
              ),
          label: title,
          backgroundColor: backgroundColor,
        );
}
