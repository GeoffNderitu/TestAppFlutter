import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MsCircularIcon extends StatelessWidget {
  const MsCircularIcon({
    super.key,
    this.width, 
    this.height, 
    this.size = MySokoSizes.lg, 
    required this.icon, 
    this.color, 
    this.backgroundColor, 
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: backgroundColor != null ?
      backgroundColor! :  MySokoAppHelperFunctions.isDarkMode(context) 
      ? MySokoAppColors.black.withOpacity(0.9)
      : MySokoAppColors.white.withOpacity(0.9),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}