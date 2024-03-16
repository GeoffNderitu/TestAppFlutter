import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/styles/spacing_styles.dart';
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
    final dark = MySokoAppHelperFunctions.isDarkMode(context);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(child: Divider(color: dark ? MySokoAppColors.darkGrey: MySokoAppColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
                  Text(MySokoAppTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
                  Flexible(child: Divider(color: dark ? MySokoAppColors.darkGrey: MySokoAppColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
                ],
              ),
              const SizedBox(height: MySokoSizes.spaceBtwnSections),
              // Footer Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: MySokoAppColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(onPressed: () {}, icon: const Image(
                      width: MySokoSizes.iconMd,
                      height: MySokoSizes.iconMd,
                      image: AssetImage(MySokoAppImages.google),
                      ),
                      ),
                  ),
                  const SizedBox(width: MySokoSizes.spaceBtwnItems),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: MySokoAppColors.grey), borderRadius: BorderRadius.circular(100)),
                    child: IconButton(onPressed: () {}, icon: const Image(
                      width: MySokoSizes.iconMd,
                      height: MySokoSizes.iconMd,
                      image: AssetImage(MySokoAppImages.facebook),
                      ),
                      ),
                  ),
                ],
              )
            ],
          ),          
          ),
      ),
    );
  }
}