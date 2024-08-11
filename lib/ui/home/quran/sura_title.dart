import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/quran/sura_details.dart';
import 'package:islami_app/ui/home/quran/sura_details_args.dart';

class SuraTitle extends StatelessWidget {
  final int index;
  final String title;

  const SuraTitle(this.title, this.index, {super.key});

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
          style: GoogleFonts.tajawal(),
        ),
      ),
    );
  }
}
