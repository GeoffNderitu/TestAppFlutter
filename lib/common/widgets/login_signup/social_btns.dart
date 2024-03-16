import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class MySokoAppSocialButtons extends StatelessWidget {
  const MySokoAppSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                  decoration: BoxDecoration(border: Border.all(color: MySokoAppColors.grey), borderRadius: BorderRadius.circular(100)),
                  child: IconButton(onPressed: () {}, icon: const Image(
                  width: MySokoSizes.iconMd,
                  height: MySokoSizes.iconMd,
                  image: AssetImage(MySokoAppImages.google),
                 ),
               ),
            ),
            const SizedBox(width: MySokoSizes.spaceBtwnItems),
            Container(
            decoration: BoxDecoration(border: Border.all(color: MySokoAppColors.grey), borderRadius: BorderRadius.circular(100)),
            child: IconButton(onPressed: () {}, icon: const Image(
            width: MySokoSizes.iconMd,
            height: MySokoSizes.iconMd,
            image: AssetImage(MySokoAppImages.facebook),
            ),
          ),
        ),
      ],
     );
  }
}