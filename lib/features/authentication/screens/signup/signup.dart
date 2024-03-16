import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(MySokoSizes.defaultSpace),
        child: Column(
          children: [
            Text(MySokoAppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: MySokoSizes.spaceBtwnSections),

            // Form
            Form(child: Column(
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
                    const SizedBox(height: MySokoSizes.spaceBtwnInputFields),


                  // username
                    TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.username,
                          prefixIcon: Icon(Iconsax.user_edit),
                        ),
                      ),
                      TextFormField(
                        expands: false,
                        decoration: const InputDecoration(
                          labelText: MySokoAppTexts.email,
                          prefixIcon: Icon(Iconsax.direct),
                        ),
                      ),

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
                      
                  ],
                )
              ],
            ))
          ],
        ),
        ),
      ),
    );
  }
}