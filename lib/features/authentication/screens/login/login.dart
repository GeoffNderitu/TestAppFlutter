import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/styles/spacing_styles.dart';
import 'package:new_app_flutter/utils/constants/colors.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/constants/text_strings.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';
// ignore: unused_import
import 'package:get/get.dart';
export 'package:new_app_flutter/features/authentication/screens/login/login.dart';

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
            Form(
            child: 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: MySokoSizes.spaceBtwnSections),
              child: Column(
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
                  const SizedBox(height: MySokoSizes.spaceBtwnInputFields / 2),
              
                  /// Remember user and forget pass
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(MySokoAppTexts.rememberMe),
                        ],
                      ),
                      TextButton(onPressed: (){}, 
                      child: const Text(MySokoAppTexts.forgetPassword)
                      ),
                      const SizedBox(
                        height: MySokoSizes.spaceBtwnSections
                        ),
              
                        /// Sign In Btn
                        Expanded(
                          child: SizedBox(width: double.infinity, 
                          child: ElevatedButton(onPressed: () {}, 
                          child: const Text(MySokoAppTexts.signIn
                          ),
                          ),
                          ),
                        ),
                         
                        /// Create an Account Btn
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                             child: OutlinedButton(
                              onPressed: () {}, 
                              child: const Text(
                                MySokoAppTexts.createAccount
                                ),
                                ),
                                ),
                        ),
                        const SizedBox(
                          height: MySokoSizes.spaceBtwnSections
                          ), 
                        ],
                       ) 
                      ],
                     ),
                   ),
                 ),
                //  Divider section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Divider(
                    color: dark ? MySokoAppColors.darkGrey : MySokoAppColors.grey, 
                    thickness: 0.5, 
                    indent: 60, 
                    endIndent: 5,
                  )
                  ],
                )

              ],
            ),
          ),
        ),
      );
  }
}