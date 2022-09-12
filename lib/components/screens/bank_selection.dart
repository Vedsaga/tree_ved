import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tree_ved_assignment/components/components.dart';
import 'package:tree_ved_assignment/config/config.dart';

class BankSelection extends StatelessWidget {
  const BankSelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        toolbarHeight: 80,
        title: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: DesignConfig.mediumPadding,
                  ),
                  Text(
                    'duration',
                    style: Theme.of(context).textTheme.smallText.copyWith(
                        color: textSaturatedLight, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: DesignConfig.smallPadding,
                  ),
                  Text(
                    '12 months',
                    style: Theme.of(context).textTheme.mediumText,
                  ),
                ]),
            Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: DesignConfig.mediumPadding,
                  ),
                  Text(
                    'EMI',
                    style: Theme.of(context).textTheme.smallText.copyWith(
                        color: textSaturatedLight, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: DesignConfig.smallPadding,
                  ),
                  Text(
                    '₹4,247 /mo',
                    style: Theme.of(context).textTheme.mediumText,
                  ),
                ]),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Flex(
        direction: Axis.vertical,
        children: [
          CustomDecoratedBox(
            tfRadius: DesignConfig.largePadding,
            trRadius: DesignConfig.largePadding,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: DesignConfig.mediumPadding,
                    vertical: DesignConfig.largePadding,
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'where should we send the money?',
                        style: Theme.of(context).textTheme.mediumText,
                      ),
                      const SizedBox(
                        height: DesignConfig.smallPadding,
                      ),
                      Text(
                        'amount will be credited to this bank account, EMI will also be deducted from this account',
                        style: Theme.of(context).textTheme.smallText.copyWith(
                              color: textDartSaturated,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      const SizedBox(
                        height: DesignConfig.largePadding,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 54,
                            width: 54,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: systemAppBarIcon,
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                    color: systemAppBarIcon, width: 1),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(13)),
                              ),
                              // add svg here
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: DesignConfig.smallPadding),
                                child: SvgPicture.asset(
                                  'assets/paytm_bank.svg',
                                  semanticsLabel: 'Paytm Bank Logo',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: DesignConfig.mediumPadding,
                          ),
                          Flex(
                            direction: Axis.vertical,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Paytm Payments Bank',
                                style: Theme.of(context).textTheme.mediumText,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                '919935670475',
                                style: Theme.of(context)
                                    .textTheme
                                    .smallText
                                    .copyWith(
                                      color: textDartSaturated,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          // add a circular check icon here
                          const CircleAvatar(
                            backgroundColor: Color(0xFF323943),
                            foregroundColor: systemAppBarIcon,
                            radius: 12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: DesignConfig.largePadding,
                      ),
                      // add a circular check icon here
                      const TextOutlineButton(text: 'Change account'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: DesignConfig.mainButtonHeight,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Color(0xFF262F5A),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(DesignConfig.largeRadius),
              topRight: Radius.circular(
                DesignConfig.largeRadius,
              ),
            ),
          ),
          child: Center(
            child: Text(
              'Tap for 1-click KYC',
              style: Theme.of(context)
                  .textTheme
                  .actionButton
                  .copyWith(color: const Color(0xFF7D7785)),
            ),
          ),
        ),
      ),
    );
  }
}
