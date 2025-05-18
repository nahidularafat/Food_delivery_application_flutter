import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery_in_progress..."),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: __buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  // Custom Bottom Nav Bar - Message / Call delivery driver
  Widget __buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.all(25),

      
      child: Row(
        children: [
          // profile pic of driver
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 10),
          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mitch Koko",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                "Driver",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),

          // message button
          Row(
  children: [
    // message button
    Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.message),
        color: Theme.of(context).colorScheme.primary,
      ),
    ),

  const  SizedBox(width: 10), // Optional spacing between buttons

    // call button
    Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.call),
        color: Colors.green,
      ),
    ),
  ],
)


          // call button
        ],
      ),
    );
  }
}
