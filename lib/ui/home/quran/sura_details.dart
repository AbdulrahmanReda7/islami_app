import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme/my_theme.dart';
import 'package:islami_app/core/widgets/default_screen.dart';
import 'package:islami_app/ui/home/quran/sura_details_args.dart';
import 'package:islami_app/ui/home/quran/verse_content.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura_details";

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;

    if (verses.isEmpty) {
      readFileData(args.suraIndex);
    }

    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 55.0),
            child: Row(
              children: [
                Text(
                  args.suraTitle,
                  style: GoogleFonts.tajawal(),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Icon(size: 35, Icons.play_circle),
              ],
            ),
          ),
        ),
        body: Card(
          color: Theme.of(context).cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 55, horizontal: 24),
          child: verses.isNotEmpty
              ? ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                    color: MyThemeData.lightPrimary,
                    thickness: 2,
              indent: 40,
              endIndent: 40,
              height: 1,
            ),
            itemCount: verses.length,
            itemBuilder: (context, index) {
              return VerseContent(verses[index], index);
            },
          )
              : const Center(
            child: CircularProgressIndicator(
              color: MyThemeData.lightPrimary,
            ),
          ),
        ),
      ),
    );
  }

  void readFileData(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString("assets/files/${fileIndex + 1}.txt");
    List<String> lines = fileContent.trim().split("\n");
    verses = lines;
    setState(() {});
  }
}
