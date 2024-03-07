import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app_flutter/features/authentication/screens/widgets/onboarding_navigation.dart';
import 'package:new_app_flutter/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:new_app_flutter/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:new_app_flutter/utils/constants/colors.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/constants/text_strings.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


 class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable Pages
          PageView(
            children: const[
              OnBoardingPage(
                image: MySokoAppImages.onBoardingImage1, 
                title: MySokoAppTexts.onBoardingTitle1,
                subTitle: MySokoAppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MySokoAppImages.onBoardingImage2, 
                title: MySokoAppTexts.onBoardingTitle2,
                subTitle: MySokoAppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MySokoAppImages.onBoardingImage3, 
                title: MySokoAppTexts.onBoardingTitle3,
                subTitle: MySokoAppTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const  OnBoardingSkip(),

          // Dot navigation SmoothIndicator
        const OnBoardingNavigation(),

       
        ],
      ),
    );
  }
}





