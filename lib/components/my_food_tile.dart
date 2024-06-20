import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const MyFoodTile({super.key, required this.food,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(food.price.toString()),
                    Text(food.description)
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
