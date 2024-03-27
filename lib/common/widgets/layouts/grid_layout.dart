import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../products/product_cards/product_card_vertical.dart';

class MsGridLayout extends StatelessWidget {
  const MsGridLayout({
    super.key, 
    required this.itemCount, 
    this.mainAxisExtent = 288, 
    required this.itemBuilder,
  });


  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MySokoSizes.gridViewSpacing,
        crossAxisSpacing: MySokoSizes.gridViewSpacing,
        ), 
        itemBuilder: itemBuilder,
        );
  }
}

