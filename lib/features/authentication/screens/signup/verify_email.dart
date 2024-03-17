import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/sizes.dart';


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () => Get.back(), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(MySokoSizes.defaultSpace),
        child: Column(
          children: [
            // Image

            // Title and Subtitle

            // Btns

          ],
        ),
        ),
      ),
    );
  }
}