import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
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
import '../../texts/product_title_text.dart';

class MsProductCardVertical extends StatelessWidget {
  const MsProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
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
          const SizedBox(height: MySokoSizes.spaceBtwnItems / 2),
          
          // Details
          Padding(padding: 
          EdgeInsets.only(left: MySokoSizes.sm),
          child: Column(
            children: [
              const MsProductTitleText(title: 'Green Nike AirMax', smallSize: true),
              const SizedBox(height: MySokoSizes.spaceBtwnItems / 2),
              Row(
                children: [
                  Text('Nike', overflow: TextOverflow.ellipsis, maxLines: 1, style: Theme.of(context).textTheme.labelMedium),
                  const SizedBox(width: MySokoSizes.xs),
                  const Icon(Iconsax.verify5, color: MySokoAppColors.primary, size: MySokoSizes.iconXs),
                ],
              ),
              // Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ksh 4500',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: MySokoAppColors.dark,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(MySokoSizes.cardRadiusMd),
                        bottomRight: Radius.circular(MySokoSizes.productImageRadius),
                      ),
                    ),
                    child: const SizedBox(
                      width: MySokoSizes.iconLg * 1.2,
                      height: MySokoSizes.iconLg * 1.2,
                      child: Center(child: Icon(Iconsax.add, color: MySokoAppColors.white))),
                  ),
      
                ],
              )
            ],
          ),
          )
          ],
        ),
      ),
    );
  }
}



