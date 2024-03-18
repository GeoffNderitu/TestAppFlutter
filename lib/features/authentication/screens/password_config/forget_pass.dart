import'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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

          // Submit Btn
        ],
      ),
      ),
    );
  }
}