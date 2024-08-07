import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/ui/home/quran/quran_tab.dart';
import 'package:islami_app/ui/home/radio/radio_tab.dart';
import 'package:islami_app/ui/home/sebha/sebha_tab.dart';

import '../../core/widgets/bottomnavitem.dart';
import '../../core/widgets/default_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            appTranslation(context).appTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavItem(
              appTranslation(context).quranTab,
              "assets/images/quran_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              appTranslation(context).hadethTab,
              "assets/images/hadeth_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              appTranslation(context).tasbehTab,
              "assets/images/sebha_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              appTranslation(context).radioTab,
              "assets/images/radio_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
