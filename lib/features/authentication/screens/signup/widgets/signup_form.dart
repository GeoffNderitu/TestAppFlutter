import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/features/authentication/screens/signup/verify_email.dart';
import 'package:new_app_flutter/features/authentication/screens/signup/widgets/signUp_terms_conditions.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MySokoAppSignUpForm extends StatelessWidget {
  const MySokoAppSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Form(child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.firstName,
                          prefixIcon: Icon(Iconsax.user),
                        ),
                      ),
                    ),
                    const SizedBox(width: MySokoSizes.spaceBtwnInputFields),

                    // Last name
                    Expanded(
                      child: TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.lastName,
                          prefixIcon: Icon(Iconsax.user),
                        ),
                      ),
                    ),
                  ],
                ),
                    const SizedBox(height: MySokoSizes.spaceBtwnInputFields),
                  // username
                    TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit),
                        ),
                      ),
                      const SizedBox(height: MySokoSizes.spaceBtwnInputFields),
                      // Email 
                      TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.email,
                          prefixIcon: Icon(Iconsax.direct),
                        ),
                      ),
                       const SizedBox(height: MySokoSizes.spaceBtwnInputFields),

                      // Phone No.
                      TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.phoneNo,
                          prefixIcon: Icon(Iconsax.call),
                        ),
                      ),
                      const SizedBox(height: MySokoSizes.spaceBtwnInputFields),

                      // Password
                      TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.password,
                          prefixIcon: Icon(Iconsax.password_check),
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: MySokoSizes.spaceBtwnSections),

                      // Ts & Cs Checkbox
                      const MySokoAppTermsAndConditions(),
                      const SizedBox(height: MySokoSizes.spaceBtwnSections),

                      // Sign Up Btn
                  SizedBox(
                    width: double.infinity, 
                    child: ElevatedButton(onPressed: () => Get.to(() => const VerifyEmailScreen()), 
                    child: const Text(MySokoAppTexts.createAccount),
                    ),
                    ),
            ],
       )
   );
  }
}


