import'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/constants/text_strings.dart';
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
            children: [
              Column(
                children: [
                  Image(
                    width: MySokoAppHelperFunctions.screenWidth() * 0.8,
                    height: MySokoAppHelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(MySokoAppImages.onBoardingImage1),
                  ),
                  Text(
                    MySokoAppTexts.onBoardingTitle1, 
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: MySokoSizes.spaceBtwnItems,
                  ),

                  Text(
                    MySokoAppTexts.onBoardingSubTitle1, 
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}