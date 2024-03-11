import 'package:flutter/material.dart';
import 'package:new_app_flutter/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MySokoAppDeviceUtils.getAppBarHeight(), 
      right: MySokoSizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(), 
        child: const Text('Skip'),
      ),
    );
  }
}