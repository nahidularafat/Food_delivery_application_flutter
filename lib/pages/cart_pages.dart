import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_button.dart';
import 'package:fooddeliveryapp/components/my_cart_tile.dart';
import 'package:fooddeliveryapp/models/resturant.dart';
import 'package:fooddeliveryapp/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart
        final userCart = restaurant.cart;

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Are you sure you want to clear the cart?"),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Cancel"),
                        ),
                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
              ),
            ],
          ),
          body: StreamBuilder<Object>(
            stream: Stream.empty(), // 🔁 null এর পরিবর্তে নিরাপদ stream
            builder: (context, snapshot) {
              return Column(
                children: [
                  userCart.isEmpty
                      ? const Expanded(
                          child: Center(
                            child: Text("Cart is empty..."),
                          ),
                        )
                      : Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                            itemBuilder: (context, index) {
                              final cartItem = userCart[index];
                              return MyCartTile(cartItem: cartItem);
                            },
                          ),
                        ),
                  // button to pay
MyButton(
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const PaymentPage(),
        ), // MaterialPageRoute
    ),
    text: "Go to checkout",
), // MyButton

const SizedBox(height: 25),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
