import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/constant/assets.dart';
import 'package:flights/core/functions/scaled_size.dart';
import 'package:flights/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesBackgroundHome),
            fit: BoxFit.fill,
          ),
        ),
      ),
      ListTile(
        title: Text(
          "No bookings found",
          textAlign: TextAlign.center,
          style: AppFonts.font20(context).copyWith(
              color: AppColor.darkGrey,
              height: ScaledSize.scaledSize(3, context)),
        ),
        subtitle: Text(
          "Please log in to view your bookings.",
          textAlign: TextAlign.center,
          style: AppFonts.font14(context).copyWith(
              color: AppColor.darkHalfGrey,
              height: ScaledSize.scaledSize(1.5, context)),
        ),
      )
    ]);
  }
}
