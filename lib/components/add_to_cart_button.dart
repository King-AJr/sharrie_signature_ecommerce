import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';

class AddToCartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
      onPressed: () {
        // Add to cart functionality
      },
    );
  }
}

class CartIcon extends StatelessWidget {
  final int itemCount;

  const CartIcon({Key? key, required this.itemCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
          onPressed: () {
            // Add to cart functionality
          },
        ),
        if (itemCount > 0)
          Positioned(
            right: 4,
            top: 4,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: MyColors.appGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(
                minWidth: 16,
                minHeight: 16,
              ),
              child: Text(
                '$itemCount',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
