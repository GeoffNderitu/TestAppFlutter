import 'package:flutter/material.dart';
import 'package:new_app_flutter/common/styles/spacing_styles.dart';
import 'package:new_app_flutter/utils/constants/image_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySokoAppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(MySokoAppImages.darkAppLogo),              
                  )
                ],
              )
            ],
          ),          
          ),
      ),
    );
  }
}