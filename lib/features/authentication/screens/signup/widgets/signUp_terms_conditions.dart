import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class MySokoAppTermsAndConditions extends StatelessWidget {
  const MySokoAppTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return Row(children: [
       SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
      const SizedBox(width: MySokoSizes.spaceBtwnItems),
      Text.rich(TextSpan(
        children: [
          TextSpan(text: '${MySokoAppTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: '${MySokoAppTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
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
    );
  }
}