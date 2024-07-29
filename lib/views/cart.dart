import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/components/add_to_cart_button.dart';
import 'package:sharrie_signature_ecommerce/components/back_button.dart';
import 'package:sharrie_signature_ecommerce/components/emptyCart.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isEmpty;
    return Container(
      padding: const EdgeInsets.all(Sizes.medium),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBackButton(),
              const CartIcon(
                itemCount: 0,
              ),
            ],
          ),
          EmptyCart(),
        ],
      ),
    );
  }
}
