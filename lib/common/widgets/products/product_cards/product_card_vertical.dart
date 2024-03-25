import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../styles/shadows.dart';

class MsProductCardVertical extends StatelessWidget {
  const MsProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [MsShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(MySokoSizes.productImageRadius),
        color: MySokoAppHelperFunctions.isDarkMode(context) ? MySokoAppColors.darkerGrey : MySokoAppColors.white,
      ),
    );
  }
}