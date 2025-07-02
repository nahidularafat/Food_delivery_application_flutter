import 'package:flutter/foundation.dart';
import 'package:fooddeliveryapp/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';
import 'dart:math';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/pexels-ash-craig-122861-376464.jpg",
      price: 220, // ~220 BDT
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 50),
        Addon(name: "Bacon", price: 80),
        Addon(name: "Avocado", price: 100),
      ],
    ),

    Food(
      name: "Classic Cheeseburger",
      description: "A juicy beef patty with melted cheese, lettuce, tomato, onion, pickles, ketchup, and mustard in a sesame seed bun.\n\nCalories: ~400–500 kcal",
      imagePath: "lib/images/burgers/pexels-ella-olsson-572949-1640777.jpg",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 50),
        Addon(name: "Bacon", price: 70),
        Addon(name: "Avocado", price: 90),
      ],
    ),

    Food(
      name: "Crispy Chicken Burger",
      description: "A golden fried chicken fillet served with fresh lettuce, creamy mayo, and pickles on a toasted bun.\n\nCalories: ~600–700 kcal",
      imagePath: "lib/images/burgers/front-view-tasty-meat-burger-with-cheese-salad-dark-background.jpg",
      price: 280,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Spicy sauce", price: 20),
        Addon(name: "Cheddar slice", price: 50),
        Addon(name: "Extra chicken", price: 120),
      ],
    ),

    Food(
      name: "Veggie Delight Burger",
      description: "A healthy patty made from vegetables and beans, topped with lettuce, tomato, and vegan mayo in a whole-wheat bun.\n\nCalories: ~300–400 kcal",
      imagePath: "lib/images/burgers/delicious-burger-with-fresh-ingredients.jpg",
      price: 200,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan cheese", price: 50),
        Addon(name: "Grilled mushrooms", price: 40),
        Addon(name: "Extra patty", price: 90),
      ],
    ),

    Food(
      name: "Double Beef Burger",
      description: "Two thick beef patties layered with cheese, fresh lettuce, tomato, and special sauce in a sesame bun.\n\nCalories: ~750–900 kcal",
      imagePath: "lib/images/burgers/pexels-ella-olsson-572949-1640777.jpg",
      price: 350,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Triple patty", price: 150),
        Addon(name: "Extra sauce", price: 30),
        Addon(name: "Onion rings", price: 70),
      ],
    ),

    Food(
      name: "Mushroom Swiss Burger",
      description: "A seasoned beef patty topped with sautéed mushrooms and melted Swiss cheese in a soft toasted bun.\n\nCalories: ~550–650 kcal",
      imagePath: "lib/images/burgers/front-view-tasty-meat-burger-with-cheese-salad-dark-background.jpg",
      price: 300,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra mushrooms", price: 40),
        Addon(name: "Caramelized onions", price: 50),
        Addon(name: "Double cheese", price: 60),
      ],
    ),

    // salads
    Food(
      name: "Greek Salad",
      description:
          "A refreshing mix of cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese, dressed with olive oil and herbs.\n\nCalories: ~200–250 kcal\nVitamins: A, C, K",
      imagePath: "lib/images/salads/pexels-xmtnguyen-699953.jpg",
      price: 180,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 120),
        Addon(name: "Extra Feta", price: 70),
      ],
    ),

    Food(
      name: "Garden Salad",
      description:
          "A colorful mix of lettuce, carrots, cucumbers, cherry tomatoes, and red cabbage with a light vinaigrette.\n\nCalories: ~150–200 kcal\nVitamins: A, C, K, Folate",
      imagePath: "lib/images/salads/pexels-julieaagaard-2097090.jpg",
      price: 150,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Boiled Egg", price: 60),
        Addon(name: "Croutons", price: 40),
      ],
    ),

    Food(
      name: "Avocado Quinoa Salad",
      description:
          "Protein-rich quinoa mixed with avocado, cherry tomatoes, black beans, and lime dressing.\n\nCalories: ~350–400 kcal\nVitamins: E, B6, C, Folate",
      imagePath: "lib/images/salads/pexels-dana-tentis-118658-1213710.jpg",
      price: 220,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Toasted Seeds", price: 30),
        Addon(name: "Grilled Tofu", price: 100),
      ],
    ),

    Food(
      name: "Spinach Strawberry Salad",
      description:
          "Fresh baby spinach with sliced strawberries, walnuts, and balsamic glaze.\n\nCalories: ~180–220 kcal\nVitamins: A, C, K, Iron",
      imagePath: "lib/images/salads/pexels-xmtnguyen-699953.jpg",
      price: 200,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Goat Cheese", price: 70),
        Addon(name: "Almonds", price: 50),
      ],
    ),

    Food(
      name: "Asian Chicken Salad",
      description:
          "Shredded cabbage, carrots, lettuce, grilled chicken, and crispy noodles with sesame ginger dressing.\n\nCalories: ~400–450 kcal\nVitamins: B6, C, K, Niacin",
      imagePath: "lib/images/salads/pexels-dana-tentis-118658-1213710.jpg",
      price: 250,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 120),
        Addon(name: "Peanuts", price: 40),
      ],
    ),

    // sides
    Food(
      name: "French Fries",
      description: "Golden and crispy seasoned French fries.\n\nCalories: ~300–400 kcal\nNutrients: Carbohydrates, Potassium",
      imagePath: "lib/images/sides/pexels-janetrangdoan-1099680.jpg",
      price: 80,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 40),
        Addon(name: "Ranch Dip", price: 20),
      ],
    ),

    Food(
      name: "Onion Rings",
      description: "Crispy battered onion rings served hot.\n\nCalories: ~400–450 kcal\nNutrients: Carbohydrates, Fiber",
      imagePath: "lib/images/sides/pexels-enginakyurt-2235832.jpg",
      price: 100,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Ketchup", price: 20),
        Addon(name: "BBQ Dip", price: 25),
      ],
    ),

    Food(
      name: "Mozzarella Sticks",
      description: "Fried mozzarella sticks with a crispy coating, served with marinara sauce.\n\nCalories: ~450–500 kcal\nNutrients: Protein, Calcium",
      imagePath: "lib/images/sides/pexels-h-nh-nguy-n-1719815172-27953852.jpg",
      price: 140,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Marinara", price: 20),
        Addon(name: "Garlic Dip", price: 30),
      ],
    ),

    Food(
      name: "Coleslaw",
      description: "Creamy cabbage and carrot slaw with a tangy dressing.\n\nCalories: ~150–200 kcal\nNutrients: Fiber, Vitamin C, Vitamin K",
      imagePath: "lib/images/sides/pexels-polina-tankilevitch-3872367.jpg",
      price: 50,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapeños", price: 20),
        Addon(name: "Crispy Onions", price: 30),
      ],
    ),

    Food(
      name: "Mashed Potatoes",
      description: "Creamy mashed potatoes served with optional gravy.\n\nCalories: ~250–300 kcal\nNutrients: Potassium, Vitamin B6",
      imagePath: "lib/images/sides/pexels-rdne-6646073.jpg",
      price: 90,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Gravy", price: 30),
        Addon(name: "Butter", price: 20),
      ],
    ),

    Food(
      name: "Garlic Bread",
      description: "Toasted bread slices brushed with garlic butter and herbs.\n\nCalories: ~200–250 kcal\nNutrients: Carbohydrates, Vitamin B1",
      imagePath: "lib/images/sides/pexels-valeriya-10970325.jpg",
      price: 70,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Topping", price: 40),
        Addon(name: "Chili Flakes", price: 15),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm chocolate cake with a molten chocolate center served with vanilla ice cream.\n\nCalories: ~450–500 kcal\nNutrients: Sugar, Iron, Calcium",
      imagePath: "lib/images/desserts/pexels-abhinavcoca-291528.jpg",
      price: 160,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 60),
        Addon(name: "Caramel Drizzle", price: 30),
      ],
    ),

    Food(
      name: "Classic Cheesecake",
      description:
          "Creamy baked cheesecake on a buttery graham cracker crust.\n\nCalories: ~320–400 kcal\nNutrients: Calcium, Protein, Vitamin A",
      imagePath: "lib/images/desserts/pexels-ella-olsson-572949-1640774.jpg",
      price: 180,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 40),
        Addon(name: "Whipped Cream", price: 25),
      ],
    ),

    Food(
      name: "Brownie Sundae",
      description:
          "Fudgy brownie topped with vanilla ice cream, hot fudge, and nuts.\n\nCalories: ~500–600 kcal\nNutrients: Protein, Iron, Calcium",
      imagePath: "lib/images/desserts/pexels-marta-dzedyshko-1042863-2067396.jpg",
      price: 150,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Chopped Nuts", price: 30),
        Addon(name: "Chocolate Chips", price: 20),
      ],
    ),

    Food(
      name: "Fruit Parfait",
      description:
          "Layers of fresh fruits, yogurt, and granola in a chilled cup.\n\nCalories: ~200–250 kcal\nNutrients: Vitamins A & C, Fiber, Calcium",
      imagePath: "lib/images/desserts/pexels-quang-nguyen-vinh-222549-2144112.jpg",
      price: 130,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Honey Drizzle", price: 20),
        Addon(name: "Chia Seeds", price: 25),
      ],
    ),

    Food(
      name: "Tiramisu Cup",
      description:
          "Coffee-soaked ladyfingers layered with mascarpone cream and dusted with cocoa.\n\nCalories: ~350–400 kcal\nNutrients: Calcium, Caffeine, Protein",
      imagePath: "lib/images/desserts/pexels-raudys-808941.jpg",
      price: 170,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cocoa", price: 15),
        Addon(name: "Espresso Shot", price: 40),
      ],
    ),

    Food(
      name: "Ice Cream Trio",
      description:
          "Three scoops of assorted ice cream flavors served with chocolate syrup.\n\nCalories: ~300–450 kcal\nNutrients: Calcium, Vitamin D, Sugar",
      imagePath: "lib/images/desserts/pexels-raudys-808941.jpg",
      price: 140,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 20),
        Addon(name: "Marshmallows", price: 30),
      ],
    ),

    // drinks
    Food(
      name: "Iced Lemon Tea",
      description: "Refreshing iced tea with a splash of lemon.\n\nCalories: ~70–90 kcal\nNutrients: Vitamin C, Antioxidants",
      imagePath: "lib/images/drinks/iced_lemon_tea.png.jpg",
      price: 60,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lemon", price: 10),
        Addon(name: "Mint Leaves", price: 12),
      ],
    ),

    Food(
      name: "Classic Cold Coffee",
      description: "Chilled brewed coffee blended with milk and sugar.\n\nCalories: ~150–200 kcal\nNutrients: Caffeine, Calcium",
      imagePath: "lib/images/drinks/pexels-chuchuphinh-1194030.jpg",
      price: 90,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 20),
        Addon(name: "Chocolate Syrup", price: 25),
      ],
    ),

    Food(
      name: "Mango Smoothie",
      description: "Thick smoothie made with ripe mangoes and yogurt.\n\nCalories: ~180–220 kcal\nNutrients: Vitamin A, Vitamin C, Potassium",
      imagePath: "lib/images/drinks/pexels-valeriya-842571.jpg",
      price: 110,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Honey", price: 15),
        Addon(name: "Chia Seeds", price: 20),
      ],
    ),

    Food(
      name: "Fresh Orange Juice",
      description: "100% freshly squeezed orange juice.\n\nCalories: ~110–140 kcal\nNutrients: Vitamin C, Potassium, Folate",
      imagePath: "lib/images/drinks/pexels-markusspiske-128242.jpg",
      price: 85,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Ice Cubes", price: 5),
        Addon(name: "Mint Garnish", price: 12),
      ],
    ),

    Food(
      name: "Strawberry Milkshake",
      description: "Creamy milkshake made with fresh strawberries and milk.\n\nCalories: ~250–300 kcal\nNutrients: Calcium, Vitamin D, Vitamin C",
      imagePath: "lib/images/drinks/pexels-mariapop-339696.jpg",
      price: 120,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 25),
        Addon(name: "Sprinkles", price: 12),
      ],
    ),

    Food(
      name: "Watermelon Juice",
      description: "Naturally sweet and hydrating watermelon juice.\n\nCalories: ~60–80 kcal\nNutrients: Vitamin A, Vitamin C, Lycopene",
      imagePath: "lib/images/drinks/pexels-isabella-mendes-107313-338713.jpg",
      price: 75,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 12),
        Addon(name: "Ice Cubes", price: 5),
      ],
    ),
  ];

  // Public getter
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  final List<CartItem> _cart = []; // required field

  // delivery address
  String _deliveryAddress = "Dhaka, Mirpur-1216";

  String get deliveryAddress => _deliveryAddress;

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem;
    for (var item in _cart) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = listEquals(item.selectedAddons, selectedAddons);

      if (isSameFood && isSameAddons) {
        cartItem = item;
        break;
      }
    }

    // if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item to the cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // remove from cart
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

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // Update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("______");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
            " Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("______");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("Delivery to : $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "৳${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }

  String getEstimatedCalories() {
    int totalCalories = 0;
    int itemCount = 0;

    for (CartItem item in _cart) {
      itemCount += item.quantity;

      String desc = item.food.description.toLowerCase();
      if (desc.contains('~')) {
        final regex = RegExp(r'~(\d+)[–-](\d+)\s*kcal');
        final match = regex.firstMatch(desc);
        if (match != null) {
          int low = int.tryParse(match.group(1) ?? '') ?? 0;
          int high = int.tryParse(match.group(2) ?? '') ?? 0;
          totalCalories += ((low + high) ~/ 2) * item.quantity;
        }
      }
    }

    if (itemCount == 0) return "Calorie estimate unavailable";

    final random = Random();
    int variation = random.nextInt(100) - 50; // -50 to +49
    int estimated = totalCalories + variation;
    int minCal = (estimated * 0.95).round();
    int maxCal = (estimated * 1.05).round();

    return "Estimated total calories: $minCal–$maxCal kcal";
  }
}