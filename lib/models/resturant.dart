import 'package:flutter/foundation.dart';
import 'package:fooddeliveryapp/models/cart_item.dart';
import 'package:intl/intl.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  // List of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/pexels-ash-craig-122861-376464.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    Food(
  name: "Classic Cheeseburger",
  description: "A juicy beef patty with melted cheese, lettuce, tomato, onion, pickles, ketchup, and mustard in a sesame seed bun.\n\nCalories: ~400–500 kcal",
  imagePath: "lib/images/burgers/pexels-ella-olsson-572949-1640777.jpg",
  price: 4.99,
  category: FoodCategory.burgers,
  availableAddons: [
    Addon(name: "Extra cheese", price: 0.99),
    Addon(name: "Bacon", price: 1.49),
    Addon(name: "Avocado", price: 1.99),
  ],
),

Food(
  name: "Crispy Chicken Burger",
  description: "A golden fried chicken fillet served with fresh lettuce, creamy mayo, and pickles on a toasted bun.\n\nCalories: ~600–700 kcal",
  imagePath: "lib/images/burgers/front-view-tasty-meat-burger-with-cheese-salad-dark-background.jpg",
  price: 5.49,
  category: FoodCategory.burgers,
  availableAddons: [
    Addon(name: "Spicy sauce", price: 0.50),
    Addon(name: "Cheddar slice", price: 0.99),
    Addon(name: "Extra chicken", price: 2.49),
  ],
),

Food(
  name: "Veggie Delight Burger",
  description: "A healthy patty made from vegetables and beans, topped with lettuce, tomato, and vegan mayo in a whole-wheat bun.\n\nCalories: ~300–400 kcal",
  imagePath: "lib/images/burgers/delicious-burger-with-fresh-ingredients.jpg",
  price: 4.29,
  category: FoodCategory.burgers,
  availableAddons: [
    Addon(name: "Vegan cheese", price: 0.99),
    Addon(name: "Grilled mushrooms", price: 0.89),
    Addon(name: "Extra patty", price: 1.99),
  ],
),

Food(
  name: "Double Beef Burger",
  description: "Two thick beef patties layered with cheese, fresh lettuce, tomato, and special sauce in a sesame bun.\n\nCalories: ~750–900 kcal",
  imagePath: "lib/images/burgers/pexels-ella-olsson-572949-1640777.jpg",
  price: 6.99,
  category: FoodCategory.burgers,
  availableAddons: [
    Addon(name: "Triple patty", price: 2.99),
    Addon(name: "Extra sauce", price: 0.79),
    Addon(name: "Onion rings", price: 1.49),
  ],
),

Food(
  name: "Mushroom Swiss Burger",
  description: "A seasoned beef patty topped with sautéed mushrooms and melted Swiss cheese in a soft toasted bun.\n\nCalories: ~550–650 kcal",
  imagePath: "lib/images/burgers/front-view-tasty-meat-burger-with-cheese-salad-dark-background.jpg",
  price: 5.89,
  category: FoodCategory.burgers,
  availableAddons: [
    Addon(name: "Extra mushrooms", price: 0.89),
    Addon(name: "Caramelized onions", price: 0.99),
    Addon(name: "Double cheese", price: 1.29),
  ],
),





    

    // salads
    Food(
      name: "Caesar Salad",
      description:
          "Fresh romaine lettuce tossed with Caesar dressing, croutons, and parmesan cheese.",
      imagePath: "lib/images/salads/pexels-vanmalidate-769289.jpg",
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.99),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),

    Food(
  name: "Greek Salad",
  description:
      "A refreshing mix of cucumbers, tomatoes, red onions, Kalamata olives, and feta cheese, dressed with olive oil and herbs.\n\nCalories: ~200–250 kcal\nVitamins: A, C, K",
  imagePath: "lib/images/salads/pexels-xmtnguyen-699953.jpg",
  price: 5.49,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: "Grilled Chicken", price: 2.99),
    Addon(name: "Extra Feta", price: 1.49),
  ],
),

Food(
  name: "Garden Salad",
  description:
      "A colorful mix of lettuce, carrots, cucumbers, cherry tomatoes, and red cabbage with a light vinaigrette.\n\nCalories: ~150–200 kcal\nVitamins: A, C, K, Folate",
  imagePath: "lib/images/salads/pexels-julieaagaard-2097090.jpg",
  price: 3.99,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: "Boiled Egg", price: 1.29),
    Addon(name: "Croutons", price: 0.99),
  ],
),

Food(
  name: "Avocado Quinoa Salad",
  description:
      "Protein-rich quinoa mixed with avocado, cherry tomatoes, black beans, and lime dressing.\n\nCalories: ~350–400 kcal\nVitamins: E, B6, C, Folate",
  imagePath: "lib/images/salads/pexels-dana-tentis-118658-1213710.jpg",
  price: 6.49,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: "Toasted Seeds", price: 0.79),
    Addon(name: "Grilled Tofu", price: 2.49),
  ],
),

Food(
  name: "Spinach Strawberry Salad",
  description:
      "Fresh baby spinach with sliced strawberries, walnuts, and balsamic glaze.\n\nCalories: ~180–220 kcal\nVitamins: A, C, K, Iron",
  imagePath: "lib/images/salads/pexels-xmtnguyen-699953.jpg",
  price: 5.29,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: "Goat Cheese", price: 1.49),
    Addon(name: "Almonds", price: 1.19),
  ],
),

Food(
  name: "Asian Chicken Salad",
  description:
      "Shredded cabbage, carrots, lettuce, grilled chicken, and crispy noodles with sesame ginger dressing.\n\nCalories: ~400–450 kcal\nVitamins: B6, C, K, Niacin",
  imagePath: "lib/images/salads/pexels-dana-tentis-118658-1213710.jpg",
  price: 6.99,
  category: FoodCategory.salads,
  availableAddons: [
    Addon(name: "Extra Chicken", price: 2.49),
    Addon(name: "Peanuts", price: 0.99),
  ],
),


    // sides
    Food(
      name: "French Fries",
      description: "Golden and crispy seasoned French fries.",
      imagePath: "lib/images/sides/pexels-janetrangdoan-1099680.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.99),
        Addon(name: "Ranch Dip", price: 0.49),
      ],
    ),

    // 1. French Fries
Food(
  name: "French Fries",
  description: "Golden and crispy seasoned French fries.\n\nCalories: ~300–400 kcal\nNutrients: Carbohydrates, Potassium",
  imagePath: "lib/images/sides/pexels-janetrangdoan-1099680.jpg",
  price: 1.99,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: "Cheese Sauce", price: 0.99),
    Addon(name: "Ranch Dip", price: 0.49),
  ],
),

// 2. Onion Rings
Food(
  name: "Onion Rings",
  description: "Crispy battered onion rings served hot.\n\nCalories: ~400–450 kcal\nNutrients: Carbohydrates, Fiber",
  imagePath: "lib/images/sides/pexels-enginakyurt-2235832.jpg",
  price: 2.49,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: "Spicy Ketchup", price: 0.49),
    Addon(name: "BBQ Dip", price: 0.59),
  ],
),

// 3. Mozzarella Sticks
Food(
  name: "Mozzarella Sticks",
  description: "Fried mozzarella sticks with a crispy coating, served with marinara sauce.\n\nCalories: ~450–500 kcal\nNutrients: Protein, Calcium",
  imagePath: "lib/images/sides/pexels-h-nh-nguy-n-1719815172-27953852.jpg",
  price: 3.49,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: "Extra Marinara", price: 0.49),
    Addon(name: "Garlic Dip", price: 0.69),
  ],
),

// 4. Coleslaw
Food(
  name: "Coleslaw",
  description: "Creamy cabbage and carrot slaw with a tangy dressing.\n\nCalories: ~150–200 kcal\nNutrients: Fiber, Vitamin C, Vitamin K",
  imagePath: "lib/images/sides/pexels-polina-tankilevitch-3872367.jpg",
  price: 1.29,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: "Jalapeños", price: 0.49),
    Addon(name: "Crispy Onions", price: 0.69),
  ],
),

// 5. Mashed Potatoes
Food(
  name: "Mashed Potatoes",
  description: "Creamy mashed potatoes served with optional gravy.\n\nCalories: ~250–300 kcal\nNutrients: Potassium, Vitamin B6",
  imagePath: "lib/images/sides/pexels-rdne-6646073.jpg",
  price: 2.29,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: "Gravy", price: 0.79),
    Addon(name: "Butter", price: 0.49),
  ],
),

// 6. Garlic Bread
Food(
  name: "Garlic Bread",
  description: "Toasted bread slices brushed with garlic butter and herbs.\n\nCalories: ~200–250 kcal\nNutrients: Carbohydrates, Vitamin B1",
  imagePath: "lib/images/sides/pexels-valeriya-10970325.jpg",
  price: 1.79,
  category: FoodCategory.sides,
  availableAddons: [
    Addon(name: "Cheese Topping", price: 0.99),
    Addon(name: "Chili Flakes", price: 0.39),
  ],
),


    // desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm chocolate cake with a molten chocolate center served with vanilla ice cream.",
      imagePath: "lib/images/desserts/pexels-dapur-melodi-192125-1109197.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 1.49),
        Addon(name: "Caramel Drizzle", price: 0.79),
      ],
    ),

    // 1. Chocolate Lava Cake
Food(
  name: "Chocolate Lava Cake",
  description:
      "Warm chocolate cake with a molten chocolate center served with vanilla ice cream.\n\nCalories: ~450–500 kcal\nNutrients: Sugar, Iron, Calcium",
  imagePath: "lib/images/desserts/pexels-abhinavcoca-291528.jpg",
  price: 3.99,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: "Extra Ice Cream", price: 1.49),
    Addon(name: "Caramel Drizzle", price: 0.79),
  ],
),

// 2. Classic Cheesecake
Food(
  name: "Classic Cheesecake",
  description:
      "Creamy baked cheesecake on a buttery graham cracker crust.\n\nCalories: ~320–400 kcal\nNutrients: Calcium, Protein, Vitamin A",
  imagePath: "lib/images/desserts/pexels-ella-olsson-572949-1640774.jpg",
  price: 4.49,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: "Strawberry Topping", price: 0.99),
    Addon(name: "Whipped Cream", price: 0.59),
  ],
),

// 3. Brownie Sundae
Food(
  name: "Brownie Sundae",
  description:
      "Fudgy brownie topped with vanilla ice cream, hot fudge, and nuts.\n\nCalories: ~500–600 kcal\nNutrients: Protein, Iron, Calcium",
  imagePath: "lib/images/desserts/pexels-marta-dzedyshko-1042863-2067396.jpg",
  price: 3.79,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: "Chopped Nuts", price: 0.69),
    Addon(name: "Chocolate Chips", price: 0.49),
  ],
),

// 4. Fruit Parfait
Food(
  name: "Fruit Parfait",
  description:
      "Layers of fresh fruits, yogurt, and granola in a chilled cup.\n\nCalories: ~200–250 kcal\nNutrients: Vitamins A & C, Fiber, Calcium",
  imagePath: "lib/images/desserts/pexels-quang-nguyen-vinh-222549-2144112.jpg",
  price: 3.29,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: "Honey Drizzle", price: 0.49),
    Addon(name: "Chia Seeds", price: 0.59),
  ],
),

// 5. Tiramisu Cup
Food(
  name: "Tiramisu Cup",
  description:
      "Coffee-soaked ladyfingers layered with mascarpone cream and dusted with cocoa.\n\nCalories: ~350–400 kcal\nNutrients: Calcium, Caffeine, Protein",
  imagePath: "lib/images/desserts/pexels-raudys-808941.jpg",
  price: 4.29,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: "Extra Cocoa", price: 0.39),
    Addon(name: "Espresso Shot", price: 0.99),
  ],
),

// 6. Ice Cream Trio
Food(
  name: "Ice Cream Trio",
  description:
      "Three scoops of assorted ice cream flavors served with chocolate syrup.\n\nCalories: ~300–450 kcal\nNutrients: Calcium, Vitamin D, Sugar",
  imagePath: "lib/images/desserts/pexels-raudys-808941.jpg",
  price: 3.59,
  category: FoodCategory.desserts,
  availableAddons: [
    Addon(name: "Sprinkles", price: 0.49),
    Addon(name: "Marshmallows", price: 0.69),
  ],
),


    // drinks
    Food(
      name: "Iced Lemon Tea",
      description: "Refreshing iced tea with a splash of lemon.",
      imagePath: "lib/images/drinks/iced_lemon_tea.png.jpg", // fixed typo
      price: 1.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Lemon", price: 0.25),
        Addon(name: "Mint Leaves", price: 0.30),
      ],
    ),

    // 1. Iced Lemon Tea
Food(
  name: "Iced Lemon Tea",
  description: "Refreshing iced tea with a splash of lemon.\n\nCalories: ~70–90 kcal\nNutrients: Vitamin C, Antioxidants",
  imagePath: "lib/images/drinks/iced_lemon_tea.png.jpg",
  price: 1.49,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: "Extra Lemon", price: 0.25),
    Addon(name: "Mint Leaves", price: 0.30),
  ],
),

// 2. Classic Cold Coffee
Food(
  name: "Classic Cold Coffee",
  description: "Chilled brewed coffee blended with milk and sugar.\n\nCalories: ~150–200 kcal\nNutrients: Caffeine, Calcium",
  imagePath: "lib/images/drinks/pexels-chuchuphinh-1194030.jpg",
  price: 2.29,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: "Whipped Cream", price: 0.50),
    Addon(name: "Chocolate Syrup", price: 0.60),
  ],
),

// 3. Mango Smoothie
Food(
  name: "Mango Smoothie",
  description: "Thick smoothie made with ripe mangoes and yogurt.\n\nCalories: ~180–220 kcal\nNutrients: Vitamin A, Vitamin C, Potassium",
  imagePath: "lib/images/drinks/pexels-valeriya-842571.jpg",
  price: 2.79,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: "Honey", price: 0.40),
    Addon(name: "Chia Seeds", price: 0.50),
  ],
),

// 4. Fresh Orange Juice
Food(
  name: "Fresh Orange Juice",
  description: "100% freshly squeezed orange juice.\n\nCalories: ~110–140 kcal\nNutrients: Vitamin C, Potassium, Folate",
  imagePath: "lib/images/drinks/pexels-markusspiske-128242.jpg",
  price: 2.19,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: "Ice Cubes", price: 0.10),
    Addon(name: "Mint Garnish", price: 0.30),
  ],
),

// 5. Strawberry Milkshake
Food(
  name: "Strawberry Milkshake",
  description: "Creamy milkshake made with fresh strawberries and milk.\n\nCalories: ~250–300 kcal\nNutrients: Calcium, Vitamin D, Vitamin C",
  imagePath: "lib/images/drinks/pexels-mariapop-339696.jpg",
  price: 2.99,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: "Whipped Cream", price: 0.60),
    Addon(name: "Sprinkles", price: 0.30),
  ],
),

// 6. Watermelon Juice
Food(
  name: "Watermelon Juice",
  description: "Naturally sweet and hydrating watermelon juice.\n\nCalories: ~60–80 kcal\nNutrients: Vitamin A, Vitamin C, Lycopene",
  imagePath: "lib/images/drinks/pexels-isabella-mendes-107313-338713.jpg",
  price: 1.89,
  category: FoodCategory.drinks,
  availableAddons: [
    Addon(name: "Mint Leaves", price: 0.30),
    Addon(name: "Ice Cubes", price: 0.10),
  ],
),

  ];
  

  // Public getter
  List<Food> get menu => _menu;
  List<CartItem> get cart =>_cart;

  final List<CartItem> _cart = []; // required field

  // delevery adress

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

 //update delivery adress 
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
  receipt.writeln("Delivery to : $deliveryAddress"); // moved before return

  return receipt.toString();
}


// format double value into money
String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
}

// format list of addons into a string summary
String _formatAddons(List<Addon> addons) {
    return addons
    .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
    .join(",");
}

}
