import 'package:aly_store/common/widgets/circular_container.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import 'custom_curved_edges_widget.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        height: 400,
        color: TColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
        child: Stack(
          children: [
            // Background Custom Shapes
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                backgroundColor: TColors.textWhite.withOpacity(0.1),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: child,
            ),
          ],
        ),
      ),
    );
  }

}
