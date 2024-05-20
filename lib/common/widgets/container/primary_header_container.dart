import 'package:flutter/material.dart';
import 'package:techtackdatasub/common/widgets/container/circular_container.dart';
import 'package:techtackdatasub/common/widgets/curved_edges/curved_edges_widgets.dart';
import 'package:techtackdatasub/utils/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
          height: 490,
          child: Container(
            color: TColors.primary,
            child: Stack(
              children: [
                Positioned(
                  top: -150,
                  right: -250,
                  child: TCircularContainer(
                    backgrondColor: TColors.textWhite.withOpacity(0.1),
                  ),
                ),
                Positioned(
                  top: 100,
                  right: -300,
                  child: TCircularContainer(
                    backgrondColor: TColors.textWhite.withOpacity(0.1),
                  ),
                ),
                child,
              ],
            ),
          )),
    );
  }
}
