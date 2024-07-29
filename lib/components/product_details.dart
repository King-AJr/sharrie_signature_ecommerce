import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Sizes.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RS34670',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 8),
              Text(
                'In Stock',
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          const SizedBox(height: Sizes.medium),
          Text(
            'Repair Scrub',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: Sizes.medium),
          Text(
            'Our Repair Body Scrub is expertly crafted to rejuvenate and revitalize your skin. This luxurious scrub combines natural exfoliants with nourishing ingredients to gently remove dead skin cells, promote cell renewal, and restore your skin\'s natural radiance.',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
