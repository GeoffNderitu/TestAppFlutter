import 'package:flutter/material.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';

class MsPrimaryHeaderContainer extends StatelessWidget {
  const MsPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MsCurvedEdgesWidget(
      child: Container(
      color: MySokoAppColors.primary,
      padding: const EdgeInsets.all(0),
      child: Stack(
      children: [
        Positioned(top:-150, right: -250, child: MySokoAppCircularContainer(backgroundColor: MySokoAppColors.textWhite.withOpacity(0.1))),
        Positioned(top:100, right: -300, child: MySokoAppCircularContainer(backgroundColor: MySokoAppColors.textWhite.withOpacity(0.1))),
          ],
        ),
       ),
    );
  }
}



