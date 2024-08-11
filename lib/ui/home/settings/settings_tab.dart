import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme/my_theme.dart';
import 'package:islami_app/core/widgets/lang_bottom_sheet.dart';
import 'package:islami_app/core/widgets/theme_bottom_sheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Theme",
            style: GoogleFonts.alumniSans(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.white,
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
                color: Theme.of(context).cardColor,
              ),
              child: Text(
                "Light",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
          const Divider(
            height: 5,
            color: Colors.transparent,
          ),
          Text(
            "Language",
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
                color: Theme.of(context).cardColor,
              ),
              child: Text(
                "English",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side:
            BorderSide(color: Theme.of(context).colorScheme.primary, width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      showDragHandle: true,
      context: context,
      builder: (context) {
        return const ThemeBottomSheet();
      },
    );
  }

  void showLangBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        side:
            BorderSide(color: Theme.of(context).colorScheme.primary, width: 3),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      showDragHandle: true,
      context: context,
      builder: (context) {
        return const LangBottomSheet();
      },
    );
  }
}
