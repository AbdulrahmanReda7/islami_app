import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerseContent extends StatelessWidget {
  int index;
  String content;

  VerseContent(this.content, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 6,
        bottom: 6,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          "$content (${index + 1})",
          style: GoogleFonts.tajawal(
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
