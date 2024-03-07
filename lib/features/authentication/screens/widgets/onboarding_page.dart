import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

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