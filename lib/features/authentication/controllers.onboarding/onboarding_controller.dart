import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Have Variables here
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;



  // Update the current index when page is scrolled
  void updatePageIndicator(index) {}

  // Jump to the specific dot of the selected page
  void dotNavigationClick(index) {}

  // Update the current index and jump to the next page
  void nextPage() {}

  // Update the Current Index and Jump to last page
  void skipPage() {}
}