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
                    TextFormField(
                      expands: false,
                      decoration: const InputDecoration(
                        labelText: MySokoAppTexts.firstName,
                        prefixIcon: Icon(Iconsax.user),
                      ),
                    ),
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