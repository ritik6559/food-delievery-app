import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    //burgers
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "Cheese Burger",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.burgers,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "Cheese Burger",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.burgers,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "Cheese Burger",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.burgers,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "Cheese Burger",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.burgers,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "Cheese Burger",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.burgers,
    ),

    //sides
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "garlic bread",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.sides,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "garlic bread",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.sides,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "garlic bread",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.sides,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "garlic bread",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.sides,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "garlic bread",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.sides,
    ),

    //salads

    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "greek salad",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.salads,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "greek salad",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.salads,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "greek salad",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.salads,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "greek salad",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.salads,
    ),
    Food(
      availableAddOn: [
        Addon(
          name: "Extra cheese",
          price: 0.99,
        ),
        Addon(
          name: "Bacon",
          price: 1.99,
        ),
        Addon(
          name: "Avacado",
          price: 2.99,
        ),
      ],
      name: "greek salad",
      description:
          "Lorem ipsum hfhfh hdhhfd hdhhdoihrio iohfofho oh oihh go oho oi o ",
      price: 0.99,
      category: FoodCategory.salads,
    ),
  ];

  /* 
  
  G E T T E R S
  
  */

  List<Food> get menu => _menu;


  /*
  
  O P E R A T I O N S

  */

  //add to cart

  //remove from cart


  //get total price of cart

  //get total number  of item in card


  //clear the cart



  /*

  H E L P E R S

  */
  //generate receipt
}
