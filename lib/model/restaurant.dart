import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fooddelieveryapp/model/cart_item.dart';
import 'package:fooddelieveryapp/model/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
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
  List<CartItem> get getCart => _cart;

  //delievery address
  String _delieveryAddress = '';

  String get delieveryAddress => _delieveryAddress;

  //update address
  void updateDelieveryAddress(String newAddress) {
    _delieveryAddress = newAddress;
    notifyListeners();
  }

  /*
  
  O P E R A T I O N S

  */

  //user cart

  final List<CartItem> _cart = [];

  //add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart ite malready with the same food and selected address.
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      //check if the food items are the same.
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same.
      bool isSameAddon =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameAddon && isSameFood;
    });

    //if cart item already exists,increase its quantity.
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      //add to cart.
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.food.availableAddOn) {
        itemTotal += addon.price;
      }

      total += itemTotal;
    }

    return total;
  }

  //get total number  of item in card
  int getTotalItemCount() {
    int totalItem = 0;
    for (CartItem cartItem in _cart) {
      totalItem += cartItem.quantity;
    }

    return totalItem;
  }

  //clear the cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

  H E L P E R S

  */
  //generate receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("    Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-------------------");
    receipt.writeln();
    receipt.writeln("Total Item: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivering to: $delieveryAddress");

    return receipt.toString();
  }

  //format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
