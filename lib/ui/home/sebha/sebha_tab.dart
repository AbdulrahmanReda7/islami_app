import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme/my_theme.dart';
import 'package:islami_app/ui/providers/theme_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int zekrCounter = 0;
  int turnes = 0;
  final List<String> azkar = [
    'سُبْحَانَ اللَّهِ ',
    'الْحَمْدُ لِلَّهِ ',
    'لَا إلَه إلّا اللهُ',
    'الْلَّهُ أَكْبَرُ',
  ];
  int indexOfZekr = 0;

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = ThemeProvider.get(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                themeProvider.currentTheme == ThemeMode.dark
                    ? Image.asset("assets/images/head_sebha_dark.png")
                    : Image.asset("assets/images/head_sebha_logo.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 75.0),
                  child: RotatedBox(
                    quarterTurns: turnes,
                    child: InkWell(
                        overlayColor:
                            const MaterialStatePropertyAll(Colors.transparent),
                        onTap: () {
                          onSebhaClick();
                        },
                        child: themeProvider.currentTheme == ThemeMode.dark
                            ? Image.asset("assets/images/body_sebha_dark.png")
                            : Image.asset("assets/images/body_sebha_logo.png")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "عدد التسبيحات",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primary),
              child: Text(
                "$zekrCounter",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.only(
                  right: 25, left: 25, top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: themeProvider.currentTheme == ThemeMode.dark
                    ? MyThemeData.darkSecondary
                    : MyThemeData.lightPrimary,
              ),
              child: Text(
                azkar[indexOfZekr],
                style: GoogleFonts.tajawal().copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onSebhaClick() {
    zekrCounter++;
    if (zekrCounter % 33 == 0) {
      indexOfZekr++;
      zekrCounter = 0;
    }
    if (indexOfZekr == azkar.length) {
      zekrCounter = 0;
      indexOfZekr = 0;
    }
    turnes++;
    setState(() {});
  }
}
