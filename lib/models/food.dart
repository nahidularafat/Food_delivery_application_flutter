import 'package:flutter/material.dart';

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  final List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
    
  });
}

// food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

// Extension for FoodCategory to get icon and label
extension FoodCategoryExtension on FoodCategory {
  IconData get icon {
    switch (this) {
      case FoodCategory.burgers:
        return Icons.lunch_dining;
      case FoodCategory.salads:
        return Icons.eco;
      case FoodCategory.sides:
        return Icons.fastfood;
      case FoodCategory.desserts:
        return Icons.icecream;
      case FoodCategory.drinks:
        return Icons.local_drink;
    }
  }

  String get label {
    final name = toString().split('.').last;
    return name[0].toUpperCase() + name.substring(1);
  }
}

// food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
