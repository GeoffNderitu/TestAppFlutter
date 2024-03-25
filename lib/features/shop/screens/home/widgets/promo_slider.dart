import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:new_app_flutter/features/shop/controllers/home_controller.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/images/ms_rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class MsPromoSlider extends StatelessWidget {
  const MsPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banners.map((url) => MsRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: MySokoSizes.spaceBtwnItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                MySokoAppCircularContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentIndex.value == i ? MySokoAppColors.primary : MySokoAppColors.grey,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

