import 'package:flights/core/color/app_color.dart';
import 'package:flutter/material.dart';

abstract class OpenBottomSheet {
  static void openModal(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: AppColor.background,
          child: const Center(
            child: Text('This is a modal bottom sheet'),
          ),
        );
      },
    );
  }
}
