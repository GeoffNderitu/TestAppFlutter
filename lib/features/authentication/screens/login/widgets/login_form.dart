import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class MySokoAppLoginForm extends StatelessWidget {
  const MySokoAppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {

    return Form(child: Padding(
                padding: const EdgeInsets.symmetric(vertical: MySokoSizes.spaceBtwnSections),
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      decoration: const  InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: MySokoAppTexts.email
                      ),
                    ),
                     const SizedBox(height: MySokoSizes.spaceBtwnInputFields),
                
                    // Password
                     TextFormField(
                      decoration: const  InputDecoration(
                        prefixIcon: Icon(Iconsax.password_check),
                        labelText: MySokoAppTexts.password,
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: MySokoSizes.spaceBtwnInputFields * 0.5),
                
                    // Remember and forgot pass section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Remember
                        Row(
                          children: [
                            Checkbox(value:  true, onChanged: (value) {}),
                            const Text(MySokoAppTexts.rememberMe),
                          ],
                        ),
                        
                        // Forgot Password
                        TextButton(onPressed: () {}, child: const Text(MySokoAppTexts.forgetPassword)),
                      ],
                    ),
                    const SizedBox(height: MySokoSizes.spaceBtwnSections),
                
                
                  // Sign-in Btn
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(MySokoAppTexts.signIn))),
                  const SizedBox(height: MySokoSizes.spaceBtwnItems),

                  // Create Account Btn
                  SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(MySokoAppTexts.createAccount))),
                  const SizedBox(height: MySokoSizes.spaceBtwnSections),
                ],
                ),
              ),
   );
  }
}