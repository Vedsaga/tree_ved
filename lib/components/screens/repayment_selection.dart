import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tree_ved_assignment/components/components.dart';
import 'package:tree_ved_assignment/config/config.dart';
import 'package:tree_ved_assignment/modules/home/home.dart';

class RepaymentSelection extends StatelessWidget {
  const RepaymentSelection({
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
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: DesignConfig.mediumPadding,
              ),
              Text(
                'credit amount',
                style: Theme.of(context).textTheme.smallText.copyWith(
                    color: textSaturatedLight, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: DesignConfig.smallPadding,
              ),
              Text(
                '₹ 1,50,000',
                style: Theme.of(context).textTheme.mediumText,
              ),
            ]),
        actions: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: CustomDecoratedBox(
        tfRadius: DesignConfig.largeRadius,
        trRadius: DesignConfig.largeRadius,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: DesignConfig.mediumPadding),
          child: Flex(
            direction: Axis.vertical,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: DesignConfig.largePadding,
              ),
              Flex(
                direction: Axis.vertical,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'how do you wish to repay?',
                    style: Theme.of(context).textTheme.mediumText,
                  ),
                  const SizedBox(
                    height: DesignConfig.smallPadding,
                  ),
                  Text(
                    'choose one of our recommended plans or set your own.',
                    style: Theme.of(context).textTheme.smallText.copyWith(
                          color: textDartSaturated,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: DesignConfig.mediumPadding,
              ),
              // add list of cards here showing different plans to repay
              //card will be scrollable horizontally
              Flexible(
                child: ListView(
                  // we have 3 cards
                  // First card will be selected by default
                  // when user clicks on any other card, it will be selected
                  // and other cards will be deselected
                  // we will use a stateful widget to manage this

                  scrollDirection: Axis.horizontal,
                  children: [
                    RepaymentInfoCard(
                      repaymentAmount: '₹4,247',
                      repaymentMonth: '12',
                      cardColor: const Color(0xFF403138),
                      selectedBackgroundColor: const Color(0xFF30272C),
                      isSelected:
                          Provider.of<HomeProvider>(context).selectedIndex == 1,
                      onTap: () {
                        Provider.of<HomeProvider>(context, listen: false)
                            .updateSelectedIndex(1);
                      },
                    ),
                    RepaymentInfoCard(
                      repaymentAmount: '₹5,580',
                      repaymentMonth: '9',
                      cardColor: const Color(0xFF756C87),
                      selectedBackgroundColor: const Color(0xFF675096),
                      isSelected:
                          Provider.of<HomeProvider>(context).selectedIndex == 2,
                      onTap: () {
                        Provider.of<HomeProvider>(context, listen: false)
                            .updateSelectedIndex(2);
                      },
                    ),
                    RepaymentInfoCard(
                      repaymentAmount: '₹8,200',
                      repaymentMonth: '6',
                      cardColor: const Color(0xFF4F6685),
                      selectedBackgroundColor: const Color(0xFF386199),
                      isSelected: Provider.of<HomeProvider>(
                            context,
                          ).selectedIndex ==
                          3,
                      onTap: () {
                        Provider.of<HomeProvider>(context, listen: false)
                            .updateSelectedIndex(3);
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: DesignConfig.mediumPadding,
              ),
              const TextOutlineButton(
                text: 'Create your own plan',
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.width / 0.555,
              ),
              builder: (context) {
                return const BankSelection();
              },
            );
          },
          child: const MainButton(
            text: 'Select your bank account',
          )),
    );
  }
}
