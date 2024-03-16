import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/styles/spacing_styles.dart';
import 'package:new_app_flutter/common/widgets/login_signup/form_divider.dart';
import 'package:new_app_flutter/common/widgets/login_signup/social_btns.dart';
import 'package:new_app_flutter/features/authentication/screens/login/widgets/login_form.dart';
import 'package:new_app_flutter/features/authentication/screens/login/widgets/login_form_header.dart';
import 'package:new_app_flutter/utils/constants/colors.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/constants/text_strings.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySokoAppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const MySokoAppLoginHeader(),

              // Form
              const MySokoAppLoginForm(),

              // Divider
              MySokoAppFormDivider(dividerText: MySokoAppTexts.orSignInWith.capitalize!),

              const SizedBox(height: MySokoSizes.spaceBtwnSections),
              // Footer Section
              const MySokoAppSocialButtons(),
              ],
            ),          
         ),
      ),
    );
  }
}