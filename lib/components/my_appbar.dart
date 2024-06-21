import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/screens/cart_screen/cart_screen.dart';

class MyAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MyAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      expandedHeight: 340,
      collapsedHeight: 120,
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Sunset Dinner"),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
            icon: const Icon(Icons.shopping_cart_sharp))
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      ),
    );
  }
}
