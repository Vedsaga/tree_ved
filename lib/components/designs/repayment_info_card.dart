import 'package:flutter/material.dart';
import 'package:tree_ved_assignment/components/components.dart';
import 'package:tree_ved_assignment/config/config.dart';

class RepaymentInfoCard extends StatelessWidget {
  const RepaymentInfoCard({
    Key? key,
    required this.repaymentAmount,
    required this.repaymentMonth,
    required this.cardColor,
    required this.selectedBackgroundColor,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final String repaymentAmount;
  final String repaymentMonth;
  final Color cardColor;
  final Color selectedBackgroundColor;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 200,
          maxWidth: 200,
          maxHeight: 200,
          minHeight: 200,
        ),
        child: Card(
          elevation: DesignConfig.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DesignConfig.largeRadius,
            ),
          ),
          margin: const EdgeInsets.only(right: 24),
          color: cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: DesignConfig.mediumPadding,
              horizontal: DesignConfig.mediumPadding,
            ),
            child: Flex(
              direction: Axis.vertical,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // make circle that contain icon
                CustomCircularCheckBox(
                  selected: isSelected,
                  selectedBackgroundColor: selectedBackgroundColor,
                ),
                const SizedBox(
                  height: DesignConfig.largePadding,
                ),
                // ₹4,247/mo in Text.rich() widget.
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: repaymentAmount,
                        style: Theme.of(context).textTheme.mediumText.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: '/mo',
                        style: Theme.of(context).textTheme.smallText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: DesignConfig.smallPadding,
                ),
                Text(
                  'for $repaymentMonth months',
                  style: Theme.of(context).textTheme.smallText.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF8B8088),
                      ),
                ),
                const SizedBox(
                  height: DesignConfig.largePadding,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See calculations',
                    style: Theme.of(context).textTheme.smallText.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          shadows: [
                            const Shadow(
                                color: Colors.grey, offset: Offset(0, -5))
                          ],
                          decorationColor: Colors.grey,
                          decorationThickness: 4,
                          decorationStyle: TextDecorationStyle.dashed,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
