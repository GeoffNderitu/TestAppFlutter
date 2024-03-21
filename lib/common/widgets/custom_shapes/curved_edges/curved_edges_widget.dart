import 'package:flutter/material.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class MsCurvedEdgesWidget extends StatelessWidget {
  const MsCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MySokoAppCustomCurvedEdges(),
      child: child,
    );
  }
}