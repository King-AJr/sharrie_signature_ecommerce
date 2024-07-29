import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sharrie_signature_ecommerce/components/add_to_cart_button.dart';
import 'package:sharrie_signature_ecommerce/components/back_button.dart';
import 'package:sharrie_signature_ecommerce/components/product_details.dart';
import 'package:sharrie_signature_ecommerce/components/product_image.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';
import 'package:sharrie_signature_ecommerce/views/addToCart.dart';

class SingleProductPage extends StatelessWidget {
  const SingleProductPage({super.key});

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
                Positioned(
                  top: 40,
                  right: 20,
                  child: AddToCartIcon(),
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
          color: MyColors.appGreen,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sub',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Colors.white),
                ),
                Text(
                  '\$19.00',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              width: 152,
              height: 40,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const AddToCartPage());
                },
                style: OutlinedButton.styleFrom(
                  elevation: 0,
                  padding: const EdgeInsets.all(0),
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                child: Text(
                  'Add to Cart',
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
