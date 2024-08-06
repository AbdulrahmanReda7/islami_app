import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String title,
    String iconPath,
    Color backgroundColor,
  ) : super(
    icon: ImageIcon(
            AssetImage(
              iconPath,
            ),
          ),
          label: title,
          backgroundColor: backgroundColor,
        );
}
