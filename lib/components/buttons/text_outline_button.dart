import 'package:flutter/material.dart';
import 'package:tree_ved_assignment/config/config.dart';

class TextOutlineButton extends StatelessWidget {
  const TextOutlineButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: systemAppBarIcon,
        surfaceTintColor: systemAppBarIcon,
        shape: const StadiumBorder(),
        textStyle: Theme.of(context)
            .textTheme
            .mediumText
            .copyWith(fontWeight: FontWeight.w500),
        side: const BorderSide(
          color: systemAppBarIcon,
          width: 1.5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Text(text),
      ),
    );
  }
}
