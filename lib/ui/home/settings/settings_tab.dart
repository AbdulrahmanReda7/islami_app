import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme/my_theme.dart';
import 'package:islami_app/core/widgets/default_screen.dart';
import 'package:islami_app/core/widgets/lang_bottom_sheet.dart';
import 'package:islami_app/core/widgets/theme_bottom_sheet.dart';
import 'package:islami_app/ui/providers/theme_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslation(context).theme,
            style: GoogleFonts.alumniSans(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.transparent,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.lightPrimary),
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardTheme.color,
              ),
              child: Text(
                themeProvider.isDarkEnabled()
                    ? getTranslation(context).dark
                    : getTranslation(context).light,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.transparent,
          ),
          Text(
            getTranslation(context).language,
            style: GoogleFonts.alumniSans(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.transparent,
          ),
          InkWell(
            onTap: () {
              showLangBottomSheet(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.lightPrimary),
                borderRadius: BorderRadius.circular(18),
                color: Theme.of(context).cardTheme.color,
              ),
              child: Text(
                getTranslation(context).english,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const ThemeBottomSheet();
      },
    );
  }

  void showLangBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const LangBottomSheet();
      },
    );
  }
}
