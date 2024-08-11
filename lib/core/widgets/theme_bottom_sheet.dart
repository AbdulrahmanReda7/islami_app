import 'package:flutter/material.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          showSelectedTheme(context, "Light"),
          const SizedBox(
            height: 18,
          ),
          showUnSelectedTheme(context, "Dark"),
        ],
      ),
    );
  }

  Widget showSelectedTheme(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const Spacer(),
        Icon(
          Icons.check,
          size: 40,
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }

  Widget showUnSelectedTheme(BuildContext context, String text) {
    return Row(
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const Spacer(),
        const Icon(Icons.check, size: 40),
      ],
    );
  }
}
