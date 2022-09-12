import 'package:flutter/material.dart';
import 'package:tree_ved_assignment/components/components.dart';
import 'package:tree_ved_assignment/config/config.dart';

class CustomCircularCheckBox extends StatelessWidget {
  const CustomCircularCheckBox({
    Key? key,
    required this.selected,
    required this.selectedBackgroundColor,
  }) : super(key: key);

  final bool selected;
  final Color selectedBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return CustomDecoratedBox(
      tfRadius: DesignConfig.largeRadius,
      trRadius: DesignConfig.largeRadius,
      blRadius: DesignConfig.largeRadius,
      brRadius: DesignConfig.largeRadius,
      color: Colors.transparent,
      showBorder: !selected,
      child: CircleAvatar(
        backgroundColor:
            selected ? selectedBackgroundColor : Colors.transparent,
        foregroundColor: systemAppBarIcon,
        radius: 20,
        child: selected ? const Icon(Icons.check) : const SizedBox(),
      ),
    );
  }
}
