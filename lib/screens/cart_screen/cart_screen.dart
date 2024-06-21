import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/restaurant.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.getCart;

      return Scaffold(
        appBar: AppBar(
          title:const Text("Cart"),
        ),
      );
    });
  }
}
