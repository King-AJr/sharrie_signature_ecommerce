import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/components/product_card.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class ProductCarousel extends StatefulWidget {
  final List<ProductCard> productCards;

  const ProductCarousel({super.key, required this.productCards});

  @override
  _ProductCarouselState createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 0;

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
      _scrollController.animateTo(
        _currentPage * 160.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _nextPage() {
    if (_currentPage < widget.productCards.length - 1) {
      setState(() {
        _currentPage++;
      });
      _scrollController.animateTo(
        _currentPage * 160.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Just for you',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: _currentPage == 0 ? Colors.grey : Colors.black,
                      onPressed: _previousPage,
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: _currentPage == widget.productCards.length - 1
                          ? Colors.grey
                          : Colors.black,
                      onPressed: _nextPage,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: widget.productCards.map((card) {
                  return Padding(
                    padding: const EdgeInsets.only(right: Sizes.medium),
                    child: SizedBox(
                      width: 160.0,
                      child: card,
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
