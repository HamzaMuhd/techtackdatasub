import 'package:flutter/material.dart';
import 'package:techtackdatasub/common/widgets/curved_edges/curved_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEgdes(),
      child: child,
    );
  }
}
