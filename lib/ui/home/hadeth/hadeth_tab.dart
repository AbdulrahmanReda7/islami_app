import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/widgets/default_screen.dart';

import '../../../core/theme/my_theme.dart';
import 'hadeth_data.dart';
import 'hadeth_title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethData> allHadeth = [];

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    readHadethFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Image.asset("assets/images/hadith_header.png"),
          const Divider(
            thickness: 2,
            color: MyThemeData.lightPrimary,
            height: 2,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            appTranslation(context).hadethNum,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 2,
            color: MyThemeData.lightPrimary,
            height: 2,
          ),
          Expanded(
            child: allHadeth.isNotEmpty
                ? ListView.separated(
                    separatorBuilder: (context, index) => const Divider(
                      color: MyThemeData.lightPrimary,
                      thickness: 1,
                      indent: 40,
                      endIndent: 40,
                      height: 1,
                    ),
                    itemCount: allHadeth.length,
                    itemBuilder: (context, index) {
                      return HadethTitle(allHadeth[index]);
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(
                      color: MyThemeData.lightPrimary,
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  void readHadethFile() async {
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> seperatedAhadeth = fileContent.split("#");
    for (int i = 0; i < seperatedAhadeth.length; i++) {
      String singleHadeth = seperatedAhadeth[i];
      List<String> lines = singleHadeth.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      HadethData hadethData = HadethData(title, content);
      allHadeth.add(hadethData);
    }
    setState(() {});
  }
}
