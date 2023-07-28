import 'package:flights/core/constant/assets.dart';
import 'package:flutter/material.dart';

class BackgroundHome extends StatelessWidget {
  const BackgroundHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesBackgroundHome),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
