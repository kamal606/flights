import 'package:flights/core/functions/theme_data.dart';
import 'package:flights/core/utils/app_router.dart';

import 'package:flights/features/book_flights/presentation/bloc/flight_date_bloc/flight_date_bloc.dart';

import 'package:flights/features/book_flights/presentation/bloc/nav_bar_bloc/bottom_nav_bar_bloc.dart';
import 'package:flights/features/book_flights/presentation/bloc/passengers_bloc/passengers_bloc.dart';
import 'package:flights/features/splash/presentation/view/spalsh_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/book_flights/presentation/bloc/TripDestination_bloc/trip_destination_bloc.dart';

void main() {
  runApp(const FlightsApp());
}

class FlightsApp extends StatelessWidget {
  const FlightsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => BottomNavBarBloc(),
            ),
            BlocProvider(
              create: (context) => FlightDateBloc(),
            ),
            BlocProvider(
              create: (context) => PassengersBloc(),
            ),
            BlocProvider(
              create: (context) => TripDestinationBloc(),
            ),
          ],
          child: MaterialApp(
            theme: AppTheme.themeData(),
            debugShowCheckedModeBanner: false,
            home: const SplashView(),
            onGenerateRoute: AppRouter.onGenerateRoute,
          ),
        );
      },
    );
  }
}
