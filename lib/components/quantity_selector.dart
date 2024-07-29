import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  @override
  _QuantitySelectorState createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: decrementQuantity,
          ),
          Text('$quantity'),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: incrementQuantity,
          ),
          const Spacer(),
          const Text(
            'Unit price',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(width: 16),
          const Text(
            '\$19.00',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
