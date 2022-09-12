import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tree_ved_assignment/components/components.dart';
import 'package:tree_ved_assignment/config/config.dart';
import 'package:tree_ved_assignment/modules/home/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: true,
            leading: IconButton(
              color: backgroundSaturated,
              icon: const Icon(Icons.close),
              onPressed: () {},
            ),
            actions: <Widget>[
              IconButton(
                color: backgroundSaturated,
                icon: const Icon(Icons.help),
                onPressed: () {},
              ),
            ],
          ),
        ];
      },
      body: Scaffold(
        body: CustomDecoratedBox(
          tfRadius: DesignConfig.largeRadius,
          trRadius: DesignConfig.largeRadius,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: DesignConfig.mediumPadding,
                  vertical: DesignConfig.mediumPadding,
                ),
                child: Flex(
                  direction: Axis.vertical,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'nikunj, how much do you need?',
                      style: Theme.of(context).textTheme.largeText,
                    ),
                    const SizedBox(
                      height: DesignConfig.smallPadding,
                    ),
                    Text(
                      'move the dial and set any amount you need up to ₹ 487,891.',
                      style: Theme.of(context).textTheme.mediumText.copyWith(
                            color: textDartSaturated,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: DesignConfig.mediumPadding,
              ),
            ],
          ),
        ),
        // add a button to the bottom of the screen
        bottomNavigationBar: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.width / 0.5,
              ),
              builder: (_) {
                return ChangeNotifierProvider<HomeProvider>.value(
                  value: Provider.of<HomeProvider>(context),
                  child: const RepaymentSelection(),
                );
              },
            );
          },
          child: const MainButton(
            text: 'Process To EMI Selection',
          ),
        ),
      ),
    );
  }
}
