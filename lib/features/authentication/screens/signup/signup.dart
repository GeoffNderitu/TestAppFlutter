import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
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
                      Row(children: [
                         SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
                        const SizedBox(width: MySokoSizes.spaceBtwnItems),
                        Text.rich(TextSpan(
                          children: [
                            TextSpan(text: '${MySokoAppTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(text: MySokoAppTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark ? MySokoAppColors.white : MySokoAppColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark ? MySokoAppColors.white : MySokoAppColors.primary,
                            )),
                            TextSpan(text: '${MySokoAppTexts.and} ', style: Theme.of(context).textTheme.bodySmall),
                            TextSpan(text: MySokoAppTexts.termsOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
                              color: dark ? MySokoAppColors.white : MySokoAppColors.primary,
                              decoration: TextDecoration.underline,
                              decorationColor: dark ? MySokoAppColors.white : MySokoAppColors.primary,
                            )),
                          ],
                        ),
                        ),
                      ],
                      ),
                  ],
                )
              ),
          ],
        ),
        ),
      ),
    );
  }
}