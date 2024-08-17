import 'package:flutter/material.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    final String title,
    final Color backgroundColor, {
    final String? iconPath,
    final Icon? mainIcon,
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
