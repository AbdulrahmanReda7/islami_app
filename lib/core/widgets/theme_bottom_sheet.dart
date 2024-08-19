import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/my_theme.dart';
import 'package:islami_app/core/widgets/default_screen.dart';

import '../../ui/providers/theme_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider = ThemeProvider.get(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
            },
            child: themeProvider.isDarkEnabled()
                ? showUnSelectedTheme(context, getTranslation(context).light)
                : showSelectedTheme(
                    context,
                    getTranslation(context).light,
                  ),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
            },
            child: themeProvider.isDarkEnabled()
                ? showSelectedTheme(context, getTranslation(context).dark)
                : showUnSelectedTheme(
                    context,
                    getTranslation(context).dark,
                  ),
          ),
        ],
      ),
    );
  }

  Widget showSelectedTheme(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: MyThemeData.lightPrimary,
              ),
        ),
        const Spacer(),
        const Icon(
          Icons.check,
          size: 40,
          color: MyThemeData.lightPrimary,
        ),
      ],
    );
  }

  Widget showUnSelectedTheme(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.black,
              ),
        ),
        const Spacer(),
        const Icon(
          Icons.check,
          size: 40,
          color: Colors.black,
        ),
      ],
    );
  }
}
