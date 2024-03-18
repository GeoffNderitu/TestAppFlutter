import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/features/authentication/screens/password_config/reset_pass.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';

import '../../../../utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Padding(padding: 
      const EdgeInsets.all(MySokoSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Headings
          Text(MySokoAppTexts.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: MySokoSizes.spaceBtwnItems),
          Text(MySokoAppTexts.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium),
          const SizedBox(height: MySokoSizes.spaceBtwnSections * 2),

          // Text Field area
          TextFormField(
            decoration: const InputDecoration(
              labelText: MySokoAppTexts.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          const SizedBox(height: MySokoSizes.spaceBtwnSections),
          // Submit Btn
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () => Get.off(() => const ResetPasswordScreen()), child: const Text(
              MySokoAppTexts.submit
            )),
          )
        ],
      ),
      ),
    );
  }
}