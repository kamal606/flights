import 'package:flights/core/color/app_color.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.background,
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
