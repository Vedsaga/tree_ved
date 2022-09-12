import 'package:flutter/material.dart';
import 'package:tree_ved_assignment/config/config.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DesignConfig.mainButtonHeight,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: companyBrandColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(DesignConfig.largeRadius),
            topRight: Radius.circular(
              DesignConfig.largeRadius,
            ),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.actionButton,
          ),
        ),
      ),
    );
  }
}
