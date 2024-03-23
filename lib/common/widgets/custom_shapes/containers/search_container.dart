import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';



class MsSearchContainer extends StatelessWidget {
  const MsSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true,
  });


  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySokoSizes.defaultSpace),
      child: Container(
        width: MySokoAppDeviceUtils.getScreenwidth(context),
        padding: const EdgeInsets.all(MySokoSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? MySokoAppColors.dark : MySokoAppColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(MySokoSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: MySokoAppColors.grey): null,
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal, color: MySokoAppColors.darkerGrey),
            const SizedBox(width: MySokoSizes.spaceBtwnItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

