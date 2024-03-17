import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_flutter/common/styles/spacing_styles.dart';
import 'package:new_app_flutter/features/authentication/screens/login/login.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';
import '../../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: MySokoAppSpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
          children: [
             Image(image: AssetImage(image),
                  width: MySokoAppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),
            // Title and Subtitle
            Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnItems),
            Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),

            // Btn
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: onPressed, child: const Text(MySokoAppTexts.mySokoAppContinue)),),
          ],
          ),
        ),
      ),
    );
  }
}