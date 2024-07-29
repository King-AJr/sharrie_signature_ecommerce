import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/components/product_card.dart';
import 'package:sharrie_signature_ecommerce/models/ProductModel.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ProductModel(
      name: 'Elegant Watch',
      description: 'A stylish and elegant watch for all occasions.',
      uniqueId: '1',
      photo:
          'https://monochrome-watches.com/wp-content/uploads/2019/04/Patek-Philippe-Calatrava-Weekly-Calendar-5212A-13.jpg',
      stock: 15,
      price: 2340,
    );

    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 44, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.shopping_cart_outlined,
              size: 80,
              color: MyColors.appGreen,
            ),
            const SizedBox(height: Sizes.large),
            Text(
              'Your Cart is Empty',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: MyColors.baseBlack,
                  ),
            ),
            const SizedBox(
              height: Sizes.medium,
            ),
            Text(
              textAlign: TextAlign.center,
              'Explore our collections today start your journey towards radiant beauty. Your skin will thank you',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: Sizes.large * 2,
            ),
            SizedBox(
              height: 48,
              width: 160,
              child: ElevatedButton(
                onPressed: () {
                  // Handle checkout action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.appGreen,
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  'Start Shopping',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
            const SizedBox(height: Sizes.large * 3),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recently Viewed",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              letterSpacing: 4,
                              fontSize: 14,
                            ),
                      ),
                      Text(
                        "View all",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: MyColors.appGreen,
                            ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: Sizes.medium),
                  child: Divider(color: MyColors.neutral200),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: Sizes.medium),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductCard(
                          product: product,
                        ),
                        ProductCard(
                          product: product,
                        ),
                        ProductCard(
                          product: product,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
