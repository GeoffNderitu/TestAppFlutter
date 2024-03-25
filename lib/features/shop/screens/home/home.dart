import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
import '../../../../common/widgets/images/ms_rounded_image.dart';
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
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            const MsPrimaryHeaderContainer(
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
              padding: const EdgeInsets.all(MySokoSizes.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                    ),
                    items: const [
                      MsRoundedImage(imageUrl: MySokoAppImages.banner2),
                      MsRoundedImage(imageUrl: MySokoAppImages.banner4),
                      MsRoundedImage(imageUrl: MySokoAppImages.banner1),
                    ],
                  ),
                  const SizedBox(height: MySokoSizes.spaceBtwnItems),
                  Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                      const MySokoAppCircularContainer(
                        width: 20,
                        height: 4,
                        margin: EdgeInsets.only(right: 10),
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

