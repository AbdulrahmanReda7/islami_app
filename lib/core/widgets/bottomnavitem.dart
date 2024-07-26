import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/my_theme.dart';

class BottomNavItem extends BottomNavigationBarItem {
  BottomNavItem(
    String title,
    String iconPath,
  ) : super(
          icon: ImageIcon(
            AssetImage(
              iconPath,
            ),
          ),
          label: title,
          backgroundColor: MyThemeData.lightPrimary,
        );
}
