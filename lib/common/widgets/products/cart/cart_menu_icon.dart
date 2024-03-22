import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';

class MsCartCounterIcon extends StatelessWidget {
  const MsCartCounterIcon({
    super.key,
    required this.onPressed, required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed, icon:  Icon(Iconsax.shopping_cart, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: MySokoAppColors.black,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: MySokoAppColors.white, fontSizeFactor: 0.8)),
            ),
          ),
        )
      ],
    );
  }
}

