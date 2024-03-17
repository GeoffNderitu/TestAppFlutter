
import 'package:flutter/material.dart';
import 'package:new_app_flutter/features/authentication/screens/login/login.dart';
import 'package:new_app_flutter/features/authentication/screens/signup/signup.dart';
import 'package:new_app_flutter/features/authentication/screens/signup/verify_email.dart';
import 'package:new_app_flutter/utils/theme/theme.dart';
import 'package:new_app_flutter/app.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/app',
    routes: {
      '/app': (context) => const App(),
      '/LoginScreen':(context) => LoginScreen(),
      '/SignUpScreen':(context) => SignUpScreen(),
      '/VerifyEmailScreen':(context) => VerifyEmailScreen(),
    },
  ));
} 
