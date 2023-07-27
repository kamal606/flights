import 'package:flutter/material.dart';

abstract class MaterialRoute {
  static MaterialPageRoute materialPageRoute(
      {required String? name, required Widget screen}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: name),
      builder: (context) => screen,
    );
  }
}
