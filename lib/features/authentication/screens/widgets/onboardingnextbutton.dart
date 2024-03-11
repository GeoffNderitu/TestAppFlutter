import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:new_app_flutter/utils/constants/colors.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return Positioned(
      right: MySokoSizes.defaultSpace,
      bottom: MySokoAppDeviceUtils.getBottomnavigationBarHeight(),
      child: ElevatedButton(
         onPressed: () => OnBoardingController.instance.nextPage(),   
         style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? MySokoAppColors.primary : Colors.black),
         child: const Icon(Iconsax.arrow_right_3),
    ),
    );
  }
}
