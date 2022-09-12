// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tree_ved_assignment/config/config.dart';

ThemeData of(BuildContext context) {
  final theme = Theme.of(context);
  return theme.copyWith(
    primaryColor: companyBrandColor,
    backgroundColor: background,
    scaffoldBackgroundColor: background,
    shadowColor: backgroundSaturated,
    appBarTheme: const AppBarTheme(
      backgroundColor: background,
      centerTitle: true,
      elevation: DesignConfig.zero,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: systemAppBar,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: systemAppBar,
      ),
    ),
    splashColor: backgroundSaturated,
    highlightColor: backgroundSaturated,
    dividerColor: backgroundSaturated,
    focusColor: backgroundSaturated,
    hoverColor: backgroundSaturated,
    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    textTheme: Theme.of(context).textTheme,
    iconTheme: Theme.of(context).iconTheme.copyWith(
          color: systemAppBarIcon,
        ),
  );
}
