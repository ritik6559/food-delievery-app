import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/cart_item.dart';
import 'package:fooddelieveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, value, child) {
        return Container(
          child: const Column(
            children: [
              Row(
                children: [
                  //food image

                  //name and price

                  //increment or decrement counter.
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
