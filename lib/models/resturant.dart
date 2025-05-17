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
  ];

  // Public getter
  List<Food> get menu => _menu;
  List<CartItem> get cart =>_cart;

  final List<CartItem> _cart = []; // required field

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

  // generate a receipt
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
