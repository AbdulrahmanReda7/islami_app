import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/my_theme.dart';
import 'package:islami_app/ui/providers/theme_provider.dart';

import '../../ui/providers/locale_provider.dart';

class LangBottomSheet extends StatelessWidget {
  const LangBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final LocaleProvider localeProvider = LocaleProvider.get(context);
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              localeProvider.changeLocale("en");
            },
            child: localeProvider.currentLocale == "en"
                ? showSelectedLang(context, "English")
                : showUnSelectedLang(
                    context,
                    "English",
                  ),
          ),
          const SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: () {
                localeProvider.changeLocale("ar");
              },
              child: localeProvider.currentLocale == "ar"
                  ? showSelectedLang(context, "العربية")
                  : showUnSelectedLang(context, "العربية")),
        ],
      ),
    );
  }

  Widget showSelectedLang(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: ThemeProvider.get(context).currentTheme == ThemeMode.dark
                    ? MyThemeData.darkSecondary
                    : MyThemeData.lightPrimary,
              ),
        ),
        const Spacer(),
        Icon(
          Icons.check,
          size: 40,
          color: ThemeProvider.get(context).currentTheme == ThemeMode.dark
              ? MyThemeData.darkSecondary
              : MyThemeData.lightPrimary,
        ),
      ],
    );
  }

  Widget showUnSelectedLang(BuildContext context, String text) {
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
