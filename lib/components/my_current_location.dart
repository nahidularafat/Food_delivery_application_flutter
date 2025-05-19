import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/models/resturant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final TextEditingController _textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your location"),
        content: TextField(
          controller: _textController,
          decoration: const InputDecoration(hintText: "enter address..."),
        ),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          // save button
          MaterialButton(
            onPressed: () {
              // update delivery address
              String newAddress = _textController.text;
              context.read<Restaurant>().updateDeliveryAddress(newAddress);
              Navigator.pop(context);
              _textController.clear();
            },
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}