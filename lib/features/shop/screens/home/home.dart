import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            color: MySokoAppColors.primary,
            padding: const EdgeInsets.all(0),
            child: Stack(
              children: [
                MySokoAppCircularContainer(backgroundColor: MySokoAppColors.textWhite.withOpacity(0.1)),
                
              ],
            ),
          )
        ],
      ),
    );
  }
}

