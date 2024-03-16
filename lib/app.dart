import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app_flutter/features/authentication/screens/login/login.dart';
import 'package:new_app_flutter/features/authentication/screens/onboarding/onboarding.dart';
import 'package:new_app_flutter/utils/theme/theme.dart';

 class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MySokoAppTheme.lightTheme,
      darkTheme: MySokoAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}