import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[200],
              ),
              onPressed: () {
                // Cancel functionality
              },
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                // Checkout functionality
              },
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
