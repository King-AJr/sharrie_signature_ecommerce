import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/sizes.dart';

class GridLayout extends StatelessWidget {
  final int itemCount;
  final double mainAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  const GridLayout({
    Key? key,
    required this.itemCount,
    this.mainAxisExtent = 310,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsetsDirectional.zero,
      itemCount: itemCount,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
