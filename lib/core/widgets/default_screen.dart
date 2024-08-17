import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/ui/providers/theme_provider.dart';

class DefaultScreen extends StatelessWidget {
  final Widget body;

  const DefaultScreen({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    return Stack(
      children: [
        Image.asset(
          themeProvider.isDarkEnabled()
              ? "assets/images/dark_bg.png"
              : "assets/images/main_bg.jpg",
          fit: BoxFit.fill,
        ),
        body,
      ],
    );
  }
}

AppLocalizations getTranslation(BuildContext context) {
  // return object of AppLocalizations
  return AppLocalizations.of(context)!;
}
