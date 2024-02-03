import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edge_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),

        // -- if [size.isFinite is not true in Stack] -> error occurred
        child: Stack(
          children: [
            // -- Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(backgroundColor: TColors.white.withOpacity(0.1)),
            ),
            child,
          ],
        ),
      ),
    );
  }
}