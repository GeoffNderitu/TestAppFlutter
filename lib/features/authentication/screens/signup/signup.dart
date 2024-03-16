import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/widgets/login_signup/form_divider.dart';
import 'package:new_app_flutter/common/widgets/login_signup/social_btns.dart';
import 'package:new_app_flutter/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySokoSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(MySokoAppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),

            // Form
            const MySokoAppSignUpForm(),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),
              // Divider
            MySokoAppFormDivider(dividerText: MySokoAppTexts.orSignUpWith.capitalize!),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),
              // Footer
             const MySokoAppSocialButtons(),
            
          ],
        ),
        ),
      ),
    );
  }
}