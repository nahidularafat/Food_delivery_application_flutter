import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_quantity_selector.dart';
import 'package:fooddeliveryapp/models/cart_item.dart';
import 'package:fooddeliveryapp/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatefulWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  State<MyCartTile> createState() => _MyCartTileState();
}

class _MyCartTileState extends State<MyCartTile> {
  // get access to db

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    widget.cartItem.food.imagePath,
                    height: 100,
                    width: 100,
                  ),
                ),

                const SizedBox(width: 10),

                // name, price and quantity
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        widget.cartItem.food.name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),

                      // food price
                      Text(
                        'TK${widget.cartItem.food.price.toString()}',
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary), // TextStyle
                      ), // Text

                      const SizedBox(height: 10),

                      // quantity selector
                      QuantitySelector(
                        quantity: widget.cartItem.quantity,
                        food: widget.cartItem.food,
                        onDecrement: () {
                          restaurant.removeFromCart(widget.cartItem);
                        },
                        onIncrement: () {
                          restaurant.addToCart(
                            widget.cartItem.food, 
                            widget.cartItem.selectedAddons
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // addons
            SizedBox(
              height: widget.cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                children: widget.cartItem.selectedAddons
                  .map(
                    (addon) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                        label: Row(
                          children: [
                            // addon name
                            Text(addon.name),
                            // addon price
                            Text(' (TK${addon.price})'),
                          ],
                        ), // Row
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary)), // BorderSide // Sta
                        onSelected: (value) {},
                        backgroundColor: Theme.of(context).colorScheme.secondary,
                        labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 12,
                        ), // TextStyle
                      ), // FilterChip
                    ),
                  )
                  .toList(),
              ), // ListView
            ), // SizedBox
          ],
        ),
      ),
    );
  }
}