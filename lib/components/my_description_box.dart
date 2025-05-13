import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {

    // textStyle
    

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
      ), // BoxDecoration
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // delivery_fee
          Column(
            children: [
              Text('\$0.99'),
              Text('Delivery fee'),
            ],
          ), // Column

          // delivery_time
          Column(
            children: [
              Text('15-30 min'),
              Text('Delivery time'),
            ],
          ), // Column
        ],
      ), // Row
    ); // Container
  }
}
