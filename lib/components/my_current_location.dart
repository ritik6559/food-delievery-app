import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            "Your location",
          ),
          content: const TextField(
            decoration: InputDecoration(hintText: "Search address....."),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancel"),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliever now",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                //address
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) {
                    return Text(
                      restaurant.delieveryAddress,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold
                      ),
                    );
                  },
                ),

                //drop down menu
                const Icon(Icons.keyboard_arrow_down_rounded)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
