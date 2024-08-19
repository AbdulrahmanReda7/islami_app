import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth/hadeth_tab.dart';
import 'package:islami_app/ui/home/quran/quran_tab.dart';
import 'package:islami_app/ui/home/radio/radio_tab.dart';
import 'package:islami_app/ui/home/sebha/sebha_tab.dart';
import 'package:islami_app/ui/home/settings/settings_tab.dart';

import '../../core/widgets/bottomnavitem.dart';
import '../../core/widgets/default_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home_screen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<Widget> tabs = [
    QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const SettingsTab(),
  ];
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            getTranslation(context).appTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeInCubic);
            setState(() {
              selectedIndex = index;
            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavItem(
              getTranslation(context).quranTab,
              iconPath: "assets/images/quran_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              getTranslation(context).hadethTab,
              iconPath: "assets/images/hadeth_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              getTranslation(context).tasbehTab,
              iconPath: "assets/images/sebha_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              getTranslation(context).radioTab,
              iconPath: "assets/images/radio_icn.png",
              Theme.of(context).colorScheme.primary,
            ),
            BottomNavItem(
              getTranslation(context).settingsTab,
              mainIcon: const Icon(Icons.settings),
              Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        body: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            scrollDirection: Axis.horizontal,
            children: tabs),
      ),
    );
  }
}
