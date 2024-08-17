import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth/hadeth_data.dart';

import '../../../core/widgets/default_screen.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadeth_details";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    HadethData hadethData =
        ModalRoute.of(context)?.settings.arguments as HadethData;
    return DefaultScreen(
      body: Scaffold(
        appBar: AppBar(
          title: Text(
            hadethData.title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Theme.of(context).colorScheme.secondary,
                ),
          ),
        ),
        body: Card(
          color: Theme.of(context).cardTheme.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              24,
            ),
          ),
          margin: const EdgeInsets.symmetric(vertical: 55, horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Text(
                      textAlign: TextAlign.center,
                      hadethData.content,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
