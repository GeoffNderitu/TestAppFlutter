import 'package:get/get.dart';
import 'package:new_app_flutter/features/authentication/screens/login/login.dart';

class RoutesClass {
  // static String home = "/";
  static String logInScreen = "/logInScreen";
  
  // static String getHomeRoute()=>home;
  static String getLogInScreen()=>logInScreen;

  static List<GetPage> routes =[
    // GetPage(name: home, page: ()=>const HomeScreen),
    GetPage(name: logInScreen, page: ()=>const LoginScreen()),
  ];
}