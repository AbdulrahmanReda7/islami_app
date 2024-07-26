import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/default_screen.dart';
import 'package:islami_app/ui/home/quran/sura_details_args.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName = "sura_details";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            args.suraTitle,
          ),
        ),
        body: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          elevation: 3.5,
          margin: const EdgeInsets.symmetric(vertical: 55, horizontal: 24),
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Text("Details");
            },
          ),
        ),
      ),
    );
  }
}
