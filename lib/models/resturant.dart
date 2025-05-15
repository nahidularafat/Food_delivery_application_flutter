import 'food.dart';

class Restaurant {
  // List of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    // salads
    Food(
      name: "Caesar Salad",
      description:
          "Fresh romaine lettuce tossed with Caesar dressing, croutons, and parmesan cheese.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    // sides
    Food(
      name: "French Fries",
      description: "Golden and crispy seasoned French fries.",
      imagePath: "lib/images/sides/french_fries.png",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Ranch Dip", price: 0.49),
      ],
    ),
    // desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm chocolate cake with a molten chocolate center served with vanilla ice cream.",
      imagePath: "lib/images/desserts/lava_cake.png",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 1.49),
        Addon(name: "Caramel Drizzle", price: 0.79),
      ],
    ),
    // drinks
    Food(
      name: "Iced Lemon Tea",
      description: "Refreshing iced tea with a splash of lemon.",
      imagePath: "lib/images/drinks/iced_lemon_tea.png",
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lemon", price: 0.25),
        Addon(name: "Mint Leaves", price: 0.30),
      ],
    ),
  ];

  // Public getter
  List<Food> get menu => _menu;
}
