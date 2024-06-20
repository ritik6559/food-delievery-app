class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  List<Addon> availableAddOn;

  Food({
    required this.availableAddOn,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
  });
}

//food categories
enum FoodCategory { burgers, salads, sides, deserts, drinks }

class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
