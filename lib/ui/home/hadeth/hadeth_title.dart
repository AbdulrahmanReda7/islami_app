import 'package:flutter/material.dart';
import 'package:islami_app/ui/home/hadeth/hadeth_details.dart';

import 'hadeth_data.dart';

class HadethTitle extends StatelessWidget {
  HadethData hadethData;

  HadethTitle(this.hadethData);

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
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
