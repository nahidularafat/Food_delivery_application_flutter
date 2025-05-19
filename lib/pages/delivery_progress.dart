import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_receipt.dart';
import 'package:fooddeliveryapp/models/resturant.dart';
import 'package:fooddeliveryapp/services/database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {


FirestoreService db = FirestoreService();

  // Initialize the Firestore service
 
 @override
  void initState() {
    super.initState();
     //if we get to this page, submit order to firestore db
     String receipt = context.read<Restaurant>().displayCartReceipt();
     db.savedOrderToDatabase(receipt);


  }

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
                "Call to Driver",
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
