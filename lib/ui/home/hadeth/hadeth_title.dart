import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ui/home/hadeth/hadeth_details.dart';

import 'hadeth_data.dart';

class HadethTitle extends StatelessWidget {
  final HadethData hadethData;

  const HadethTitle(this.hadethData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 6,
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, HadethDetails.routeName,
              arguments: hadethData);
        },
        child: Text(
          textAlign: TextAlign.center,
          hadethData.title,
          style: GoogleFonts.tajawal(),
        ),
      ),
    );
  }
}
