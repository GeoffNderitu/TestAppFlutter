import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_flutter/features/authentication/screens/login/login.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySokoSizes.defaultSpace),
        child: Column(
          children: [
            // Image
            Image(image: const AssetImage(MySokoAppImages.deliveredEmailIllustration),
                  width: MySokoAppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),
            // Title and Subtitle
            Text(MySokoAppTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnItems),
            Text('support@MySokoApp.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnItems),
            Text(MySokoAppTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),
            // Btns
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(MySokoAppTexts.mySokoAppContinue)),),
            const SizedBox(height: MySokoSizes.spaceBtwnItems),
             SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(MySokoAppTexts.resendEmail)),),
          ],
        ),
        ),
      ),
    );
  }
}