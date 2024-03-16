import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/sizes.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';





class MySokoAppLoginHeader extends StatelessWidget {
  const MySokoAppLoginHeader({
    super.key
    });

  @override
  Widget build(BuildContext context) {
  final dark = MySokoAppHelperFunctions.isDarkMode(context);
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Image(
            height: 150,
            image: AssetImage(dark ? MySokoAppImages.lightAppLogo : MySokoAppImages.darkAppLogo),              
          ),
          Text(MySokoAppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: MySokoSizes.sm),
          Text(MySokoAppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
         ],
   );
  }
}