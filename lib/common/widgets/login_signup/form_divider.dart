import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/constants/text_strings.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';

class MySokoAppFormDivider extends StatelessWidget {
  const MySokoAppFormDivider({super.key, required this.dividerText});
  final String dividerText;
  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Flexible(child: Divider(color: dark ? MySokoAppColors.darkGrey: MySokoAppColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
         Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
         Flexible(child: Divider(color: dark ? MySokoAppColors.darkGrey: MySokoAppColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
       ],
    );
  }
}