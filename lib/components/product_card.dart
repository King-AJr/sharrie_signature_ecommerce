import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sharrie_signature_ecommerce/models/ProductModel.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';
import 'package:sharrie_signature_ecommerce/views/singleProduct.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final String name = product.name;
    final String photo = product.photo;
    final double price = product.price;
    return GestureDetector(
      onTap: () => Get.to(() => SingleProductPage()),
      child: SizedBox(
        width: 160,
        height: 210,
        child: Card(
          color: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: CachedNetworkImage(
                    imageUrl: photo,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const SizedBox(
                height: Sizes.small / 2,
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Text(
                          '\$$price',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                      height: 30,
                      child: OutlinedButton(
                        onPressed: null,
                        style: OutlinedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.all(0),
                          side: const BorderSide(color: Colors.green),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        child: Text(
                          'Add to Cart',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
