import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var primaryStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);

    var secondaryStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "\$0.09",
                style: primaryStyle,
              ),
              Text(
                "Delievery fee",
                style: secondaryStyle,
              )
            ],
          ),
          Column(
            children: [
              Text(
                "15 - 30 min",
                style: primaryStyle,
              ),
              Text(
                "Delievery time",
                style: secondaryStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
