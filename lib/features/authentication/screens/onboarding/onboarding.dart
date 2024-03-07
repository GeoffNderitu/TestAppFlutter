import'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/constants/text_strings.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';


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
          const OnBoardingSkip(),
       
        ],
      ),
    );
  }
}

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
        onPressed: (){}, 
        child: const Text('Skip'),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, 
    required this.image, 
    required this.title, 
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySokoSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: MySokoAppHelperFunctions.screenWidth() * 0.8,
            height: MySokoAppHelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
           title, 
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: MySokoSizes.spaceBtwnItems,
          ),
      
          Text(
            subTitle, 
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}