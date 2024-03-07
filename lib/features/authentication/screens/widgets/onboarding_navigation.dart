import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/colors.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: MySokoAppDeviceUtils.getBottomnavigationBarHeight() + 25,
      left: MySokoSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(), 
        count: 3, 
        effect: ExpandingDotsEffect(activeDotColor: dark ? MySokoAppColors.light: MySokoAppColors.dark, dotHeight: 6),
        ),
        );
  }
}