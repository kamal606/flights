import 'package:flutter/material.dart';

abstract class ScaledSize {
  static double scaledSize(double size, BuildContext context) {
    final double scaleFactor = MediaQuery.of(context).size.shortestSide / 360.0;
    return size * scaleFactor;
  }
}
