import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:new_app_flutter/common/widgets/images/ms_rounded_image.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';
import '../../icons/i_circular_icon.dart';

class MsProductCardVertical extends StatelessWidget {
  const MsProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [MsShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(MySokoSizes.productImageRadius),
        color: dark ? MySokoAppColors.darkerGrey : MySokoAppColors.white,
      ),
      child: Column(
        children: [
          // Thumbnail, tags , whishlist btn
          MsRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(MySokoSizes.sm),
            backgroundColor: dark ? MySokoAppColors.dark : MySokoAppColors.light,
            child: Stack(
              children: [
                // Thumbnail
               const MsRoundedImage(imageUrl: MySokoAppImages.productImage1, applyImageRadius: true),
                // Sale tag
                Positioned(
                  top: 12,
                  child: MsRoundedContainer(
                    radius: MySokoSizes.sm,
                    backgroundColor: MySokoAppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: MySokoSizes.sm, vertical: MySokoSizes.xs),
                    child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: MySokoAppColors.black)
                    ),
                  ),
                ),
                // favorite icon Btn
                const Positioned(
                  top: 0,
                  right: 0,
                  child: MsCircularIcon(icon: Iconsax.heart5, color: Colors.red)
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

