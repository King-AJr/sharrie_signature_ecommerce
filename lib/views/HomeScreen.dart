import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/components/category_card.dart';
import 'package:sharrie_signature_ecommerce/components/custom_carousel.dart';
import 'package:sharrie_signature_ecommerce/components/grid_layout.dart';
import 'package:sharrie_signature_ecommerce/components/product_card.dart';
import 'package:sharrie_signature_ecommerce/components/search_bar.dart';
import 'package:sharrie_signature_ecommerce/models/ProductModel.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(
                Sizes.medium,
                Sizes.large * 2,
                Sizes.medium,
                Sizes.large,
              ),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sharrie's Signature",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined,
                        color: Colors.black),
                    onPressed: () {
                      // Handle cart button press
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.medium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome, Jane',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(
                    height: Sizes.medium,
                  ),
                  const mySearchBar(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: ProductCarousel(
                productCards: [
                  ProductCard(
                    product: product,
                  ),
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
            Padding(
              padding: const EdgeInsets.all(Sizes.medium),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deals",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          "View all",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.medium),
                    child: Divider(color: MyColors.neutral200),
                  ),
                  GridLayout(
                    itemCount: 4,
                    mainAxisExtent: 210,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(Sizes.medium / 2,
                            Sizes.medium, Sizes.medium / 2, 0),
                        child: ProductCard(
                          product: product,
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Our Collections",
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    letterSpacing: 4,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.medium),
                    child: Divider(color: MyColors.neutral200),
                  ),
                  GridLayout(
                    itemCount: 4,
                    mainAxisExtent: 200,
                    itemBuilder: (_, index) {
                      return const Padding(
                        padding: EdgeInsets.fromLTRB(Sizes.medium / 2,
                            Sizes.medium, Sizes.medium / 2, 0),
                        child: CategoryCard(
                            image:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSw6kqs-o_QlNteWlh5s0seLKRjEvvlWW2yYw&s",
                            title: "Moisturizer"),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
