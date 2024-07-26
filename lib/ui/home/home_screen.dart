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
          title: const Text(
            "Islami",
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
              "Quran",
              "assets/images/quran_icn.png",
            ),
            BottomNavItem(
              "Hadeth",
              "assets/images/hadeth_icn.png",
            ),
            BottomNavItem(
              "Sebha",
              "assets/images/sebha_icn.png",
            ),
            BottomNavItem(
              "Radio",
              "assets/images/radio_icn.png",
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
