 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_app_flutter/features/shop/screens/home/home.dart';
import 'package:new_app_flutter/utils/constants/colors.dart';
import 'package:new_app_flutter/utils/helpers/helper_functions.dart';

 class NavigationMenu extends StatelessWidget {
   const NavigationMenu({super.key});
 
   @override
   Widget build(BuildContext context) {
    final controller = Get.put(NaviGationController());
    final darkMode = MySokoAppHelperFunctions.isDarkMode(context);
     return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? MySokoAppColors.black : Colors.white,
          indicatorColor: darkMode ? MySokoAppColors.white.withOpacity(0.1) : MySokoAppColors.black.withOpacity(0.1),
          destinations: const [
           NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
           NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
           NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
           NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
     );
   }
 }


 class NaviGationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), Container(color: Color.fromARGB(255, 94, 209, 79)), Container(color: Color.fromARGB(255, 26, 197, 189)), Container(color: Color.fromARGB(255, 136, 117, 104))];
 }