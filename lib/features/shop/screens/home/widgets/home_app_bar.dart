import 'package:flutter/material.dart';
import 'package:new_app_flutter/common/widgets/app_bar/app_bar.dart';

import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class MsHomeAppBar extends StatelessWidget {
  const MsHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MsAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(MySokoAppTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MySokoAppColors.grey)),
        Text(MySokoAppTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MySokoAppColors.white),),
      ],
    ),
    actions: [
      MsCartCounterIcon(onPressed: () {}, iconColor: MySokoAppColors.white)
    ],
    );
  }
}