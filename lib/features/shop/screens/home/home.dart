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
import '../../../../common/widgets/custom_shapes/containers/search_conatiner.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
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
            MsPrimaryHeaderContainer(
             child: Column(
              children: [
                const MsHomeAppBar(),
                const SizedBox(height: MySokoSizes.spaceBtwnSections),

                // Searchbar goes here
                const MsSearchContainer(
                  text: 'Search Store',
                ),
                const SizedBox(height: MySokoSizes.spaceBtwnSections),

                // Categories Section
                Padding(padding: const EdgeInsets.only(left: MySokoSizes.defaultSpace), 
                child: Column(
                  children: [

                    // Heading for categories
                    const MsSectionHeading(title: 'Popular Categories', showActionButton: false),
                    const SizedBox(height: MySokoSizes.spaceBtwnItems),

                    // Categories 
                    SizedBox(
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return Column(
                            children: [
                              Container(
                                width: 56,
                                height: 56,
                                padding: const EdgeInsets.all(MySokoSizes.sm),
                                decoration: BoxDecoration(
                                  color: MySokoAppColors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
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



