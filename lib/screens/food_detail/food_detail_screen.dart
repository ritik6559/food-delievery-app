import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/components/my_button.dart';
import 'package:fooddelieveryapp/model/food.dart';

class FoodDetailScreen extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};
  FoodDetailScreen({super.key, required this.food}) {
    for (Addon addon in food.availableAddOn) {
      selectedAddons[addon] = false; //initializing initially to be unselected.
    }
  }

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.4),
                  Text(
                    widget.food.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                  Text(
                    '\$ ${widget.food.price.toString()}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(height: 10),
                  Text(widget.food.description),
                  const SizedBox(height: 10),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Add-on's",
                    style: TextStyle(
                        fontSize: 16,
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.food.availableAddOn.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddOn[index];
                        return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text('\$ ${addon.price.toString()}'),
                            value: widget.selectedAddons[addon],
                            onChanged: (bool? value) {
                              setState(() {
                                widget.selectedAddons[addon] = value!;
                              });
                            });
                      },
                    ),
                  ),
                  MyButton(
                    onTap: () {},
                    text: "Add to cart",
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        ),
         SafeArea(
          child:  Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.arrow_back_ios)),
          ),
        )
        
      ],
    );
  }
}
