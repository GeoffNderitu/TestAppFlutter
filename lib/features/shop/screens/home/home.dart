import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/common/widgets/app_bar/app_bar.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

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
                MsAppBar(title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(MySokoAppTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MySokoAppColors.grey)),
                    Text(MySokoAppTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MySokoAppColors.white),),
                  ],
                ),
                actions: [
                  Stack(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Iconsax.shopping_cart, color: MySokoAppColors.white)),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            color: MySokoAppColors.black,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                            child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: MySokoAppColors.white)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
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

