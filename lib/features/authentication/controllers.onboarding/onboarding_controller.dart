import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_app_flutter/features/authentication/screens/login/login.dart';


class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Have Variables here
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;



  // Update the current index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex = index;

  // Jump to the specific dot of the selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  // Update the current index and jump to the next page
  void nextPage() {
    if(currentPageIndex.value == 2){
      Get.to( const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update the Current Index and Jump to last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}