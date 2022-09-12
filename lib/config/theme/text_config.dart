import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tree_ved_assignment/config/config.dart';

extension TextConfig on TextTheme {
  TextStyle get actionButton {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: GoogleFonts.nunito().fontFamily,
      overflow: TextOverflow.ellipsis,
      color: textLight,
    );
  }

  TextStyle get smallText {
    return TextStyle(
      fontSize: DesignConfig.smallText,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.nunito().fontFamily,
      color: textLight,
    );
  }

  TextStyle get mediumText {
    return TextStyle(
      fontSize: DesignConfig.mediumText,
      fontWeight: FontWeight.w700,
      fontFamily: GoogleFonts.nunito().fontFamily,
      color: textLight,
    );
  }

  TextStyle get largeText {
    return TextStyle(
      fontSize: DesignConfig.largeText,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.nunito().fontFamily,
      color: textLight,
    );
  }
}
