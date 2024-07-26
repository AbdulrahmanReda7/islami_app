import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/quran/sura_details.dart';
import 'package:islami_app/ui/home/quran/sura_details_args.dart';

class SuraTitle extends StatelessWidget {
  int index;
  String title;

  SuraTitle(
    this.title,
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 6,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            SuraDetails.routeName,
            arguments: SuraDetailsArgs(
              index,
              title,
            ),
          );
        },
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
