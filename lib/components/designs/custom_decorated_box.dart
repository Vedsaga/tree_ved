import 'package:flutter/material.dart';
import 'package:tree_ved_assignment/config/config.dart';

class CustomDecoratedBox extends StatelessWidget {
  const CustomDecoratedBox({
    Key? key,
    required this.child,
    this.color = backgroundSaturated,
    required this.tfRadius,
    required this.trRadius,
    this.blRadius,
    this.brRadius,
    this.showBorder = false,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final double tfRadius;
  final double trRadius;
  final double? brRadius;
  final double? blRadius;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(tfRadius),
          topRight: Radius.circular(trRadius),
          bottomLeft: Radius.circular(blRadius ?? 0),
          bottomRight: Radius.circular(brRadius ?? 0),
        ),
        border: showBorder
            ? Border.all(
                color: Colors.grey,
                width: 1,
              )
            : null,
      ),
      child: child,
    );
  }
}
