import 'package:flutter/material.dart';

abstract class AppFonts {
  static double _scaledFontSize(double fontSize, BuildContext context) {
    final double scaleFactor = MediaQuery.of(context).size.shortestSide / 360.0;
    return fontSize * scaleFactor;
  }

  static TextStyle font32(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(32, context),
      );
  static TextStyle font30(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(30, context),
      );
  static TextStyle font28(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(28, context),
      );
  static TextStyle font26(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(26, context),
      );
  static TextStyle font24(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(24, context),
      );
  static TextStyle font22(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(22, context),
      );
  static TextStyle font20(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(20, context),
      );
  static TextStyle font18(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(18, context),
      );
  static TextStyle font16(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(16, context),
      );
  static TextStyle font14(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(14, context),
      );
  static TextStyle font12(BuildContext context) => TextStyle(
        fontSize: _scaledFontSize(12, context),
      );
}
