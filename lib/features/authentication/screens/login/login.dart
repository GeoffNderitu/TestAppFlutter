import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/styles/spacing_styles.dart';
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? MySokoAppImages.lightAppLogo : MySokoAppImages.darkAppLogo),
                ),
                Text(
                  MySokoAppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium
                ),
                const SizedBox(height: MySokoSizes.sm),
                Text(
                  MySokoAppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
             ),
            /// Login-in form Here
            Form(child: 
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: MySokoAppTexts.email
                  ),                              
                ),
                const SizedBox(height: MySokoSizes.spaceBtwnInputFields),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: MySokoAppTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash),
                    
                  ),
                ),
              ],
                   ),
                 ),
              ],
            ),
          ),
        ),
      );
  }
}