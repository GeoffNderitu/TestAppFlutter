import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/widgets/app_bar/app_bar.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:new_app_flutter/features/shop/screens/home/widgets/home_categories.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/image_text/vertical_image_text.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
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
                ),
                SizedBox(height: MySokoSizes.spaceBtwnSections),

                // Categories Section
                Padding(
                padding: EdgeInsets.only(left: MySokoSizes.defaultSpace), 
                child: Column(
                  children: [

                    // Heading for categories
                    MsSectionHeading(title: 'Popular Categories', showActionButton: false, textColor: Colors.white,),
                    SizedBox(height: MySokoSizes.spaceBtwnItems),
                    // Categories 
                    MsHomeCategories(),
                  ],
                ),
                )
              ],
             ),
            ),
            // Body Section
            Padding(
              padding: EdgeInsets.all(MySokoSizes.defaultSpace),
              child: MsRoundedImage(imageUrl: MySokoAppImages.banner2),
            )
          ],
        ),
      ),
    );
  }
}

class MsRoundedImage extends StatelessWidget {
  const MsRoundedImage({
    super.key, 
    this.width, 
    this.height, 
    required this.imageUrl, 
    this.applyImageRadius = false, 
    this.border, 
    this.backgroundColor = MySokoAppColors.light, 
    this.fit = BoxFit.contain, 
    this.padding, 
    this.isNetworkImage = false, 
    this.onPressed, 
    this.borderRadius = MySokoSizes.md,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(border: border, color: backgroundColor, borderRadius: BorderRadius.circular(MySokoSizes.md)),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child: Image(fit: fit, image: isNetworkImage? NetworkImage(imageUrl) : AssetImage(imageUrl)as ImageProvider),
          ),
      ),
    );
  }
}


