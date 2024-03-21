import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: MySokoAppCustomCurvedEdges(),
              child: Container(
                color: MySokoAppColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 300,
                  child: Stack(
                    children: [
                      Positioned(top:-150, right: -250, child: MySokoAppCircularContainer(backgroundColor: MySokoAppColors.textWhite.withOpacity(0.1))),
                      Positioned(top:100, right: -300, child: MySokoAppCircularContainer(backgroundColor: MySokoAppColors.textWhite.withOpacity(0.1))),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

