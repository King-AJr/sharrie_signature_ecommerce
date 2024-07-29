import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/components/add_to_cart_button.dart';
import 'package:sharrie_signature_ecommerce/components/back_button.dart';
import 'package:sharrie_signature_ecommerce/components/product_details.dart';
import 'package:sharrie_signature_ecommerce/components/product_image.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class AddToCartPage extends StatelessWidget {
  const AddToCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 400,
                  child: const PhotoDisplay(
                    photoUrls: [
                      'https://cdn.filestackcontent.com/oFexTFxfTgiXB72mf820',
                      'https://cdn.filestackcontent.com/oFexTFxfTgiXB72mf820',
                      'https://cdn.filestackcontent.com/oFexTFxfTgiXB72mf820',
                    ],
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 20,
                  child: CustomBackButton(),
                ),
                const Positioned(
                  top: 40,
                  right: 20,
                  child: CartIcon(
                    itemCount: 2,
                  ),
                ),
              ],
            ),
            const ProductDetails(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 84,
        padding: const EdgeInsets.symmetric(
            horizontal: Sizes.medium, vertical: Sizes.small),
        decoration: const BoxDecoration(
          color: MyColors.green200,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {
                // Handle cancel action
              },
              style: OutlinedButton.styleFrom(
                elevation: 0,
                padding: const EdgeInsets.all(0),
                side: const BorderSide(color: MyColors.baseBlack, width: 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                'Cancel',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: MyColors.baseBlack, fontSize: 12),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Unit price',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: MyColors.neutral600),
                ),
                Text(
                  '\$19.00',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: MyColors.baseBlack),
                ),
              ],
            ),
            SizedBox(
              width: 115,
              height: 48,
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
                  'Checkout',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
