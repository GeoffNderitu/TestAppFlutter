import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySokoSizes.defaultSpace),
        child: Column(
          children: [
            Image(image: const AssetImage(MySokoAppImages.deliveredEmailIllustration),
                  width: MySokoAppHelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),
            // Title and Subtitle
            Text(MySokoAppTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnItems),
            Text(MySokoAppTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),

            // Btn
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(MySokoAppTexts.done)),
            ),
            const SizedBox(height: MySokoSizes.spaceBtwnItems),
            SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(MySokoAppTexts.resendEmail)),
            ),
          ],
        ),
        ),
      ),
    );
  }
}