import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';


class MsVerticalImageText extends StatelessWidget {
  const MsVerticalImageText({
    super.key,
    required this.image, 
    required this.title, 
    this.textColor = MySokoAppColors.white, 
    this.backgroundColor = MySokoAppColors.white, 
    this.onTap,
  });
  
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MySokoSizes.spaceBtwnItems),
        child: Column(
          children: [
            // Circular icon section
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(MySokoSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? MySokoAppColors.black : MySokoAppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: 
                Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  // color: dark ? MySokoAppColors.dark : MySokoAppColors.dark,
                  )
                  ),
            ),
            // Text Section
            const SizedBox(height: MySokoSizes.spaceBtwnItems / 2),
          Text(title, 
              style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
              ),
          ],
        ),
      ),
    );
  }
}



