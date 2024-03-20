 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

 class NavigationMenu extends StatelessWidget {
   const NavigationMenu({super.key});
 
   @override
   Widget build(BuildContext context) {
    final controller = Get.put(NaviGationController());

     return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
        
          destinations: const [
           NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
           NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
           NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
           NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
        ),
      ),
      body: Container(),
     );
   }
 }


 class NaviGationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [Container(color: Color.fromARGB(255, 177, 46, 46)), Container(color: Color.fromARGB(255, 94, 209, 79)), Container(color: Color.fromARGB(255, 26, 197, 189)), Container(color: Color.fromARGB(255, 136, 117, 104))];
 }