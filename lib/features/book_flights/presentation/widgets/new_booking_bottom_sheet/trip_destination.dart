import 'package:flights/features/book_flights/presentation/bloc/TripDestination_bloc/trip_destination_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/color/app_color.dart';
import '../../../../../core/utils/app_icons.dart';
import '../../view/modal_bottom_sheet.dart';
import 'custom_from_to.dart';

class TripDestination extends StatelessWidget {
  const TripDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      height: 105,
      child: BlocBuilder<TripDestinationBloc, TripDestinationState>(
        builder: (context, state) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  OpenBottomSheet.search(context);
                },
                child: CustomChooseFromAndToTrip(
                  codeCountry: state.from,
                  city: state.cityFrom,
                  locationArrow: AppIcons.locationArrow,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 2.h,
                    height: 30.h,
                    color: AppColor.lightGrey,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: AppColor.lightGrey,
                    )),
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        color: AppColor.lightPink,
                        constraints: const BoxConstraints(),
                        onPressed: () {
                          BlocProvider.of<TripDestinationBloc>(context).add(
                              SwitchDestination(
                                  from: state.from,
                                  to: state.to,
                                  cityFrom: state.cityFrom,
                                  cityTo: state.cityTo));
                        },
                        icon: Icon(
                          AppIcons.arrowRightArrowLeft,
                          size: 10.h,
                        )),
                  ),
                  Container(
                    width: 2.h,
                    height: 30.h,
                    color: AppColor.lightGrey,
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  OpenBottomSheet.search(context);
                },
                child: CustomChooseFromAndToTrip(
                  isArrived: true,
                  codeCountry: state.to,
                  city: state.cityTo,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
