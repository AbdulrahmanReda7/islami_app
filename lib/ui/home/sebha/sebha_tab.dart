import 'package:flutter/material.dart';
import 'package:islami_app/core/theme/my_theme.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int zekrCounter = 0;
  int turnes = 0;
  List<String> Azkar = [
    'سُبْحَانَ اللَّهِ ',
    'الْحَمْدُ لِلَّهِ ',
    'لَا إلَه إلّا اللهُ',
    'الْلَّهُ أَكْبَرُ',
  ];
  int indexOfZekr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset("assets/images/head_sebha_logo.png"),
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
                        child:
                            Image.asset("assets/images/body_sebha_logo.png")),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "عدد التسبيحات",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFc9b496)),
              child: Text(
                "$zekrCounter",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding:
                  const EdgeInsets.only(right: 30, left: 30, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: MyThemeData.lightPrimary,
              ),
              child: Text(
                Azkar[indexOfZekr],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
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
    if (indexOfZekr == Azkar.length) {
      zekrCounter = 0;
    }
    turnes++;
    setState(() {});
  }
}
