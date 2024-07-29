import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';

class mySearchBar extends StatelessWidget {
  const mySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: MyColors.neutral300,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
        shape: BoxShape.rectangle,
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: MyColors.neutral300, size: 24),
          hintText: 'Search',
          border: InputBorder.none,
          hintStyle: TextStyle(
            color: MyColors.neutral300,
          ),
        ),
      ),
    );
  }
}
