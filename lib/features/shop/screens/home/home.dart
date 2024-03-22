import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/widgets/app_bar/app_bar.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/home_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            MsPrimaryHeaderContainer(
             child: Column(
              children: [
                MsHomeAppBar(),
                SizedBox(height: MySokoSizes.spaceBtwnSections),

                // Searchbar goes here
                MsSearchContainer(
                  text: 'Search Store',
                )
              ],
             ),
            )
          ],
        ),
      ),
    );
  }
}

class MsSearchContainer extends StatelessWidget {
  const MsSearchContainer({
    super.key, required this.text, this.icon = Iconsax.search_normal, this.showBackground = true, this.showBorder = true,
  });


  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = MySokoAppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySokoSizes.defaultSpace),
      child: Container(
        width: MySokoAppDeviceUtils.getScreenwidth(context),
        padding: const EdgeInsets.all(MySokoSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? MySokoAppColors.dark : MySokoAppColors.light : Colors.transparent,
          borderRadius: BorderRadius.circular(MySokoSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: MySokoAppColors.grey): null,
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal, color: MySokoAppColors.darkerGrey),
            const SizedBox(width: MySokoSizes.spaceBtwnItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}



