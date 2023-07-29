import 'package:flights/features/book_flights/presentation/widgets/home/background.dart';
import 'package:flights/features/book_flights/presentation/widgets/home/title_with_button.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackgroundHome(),
        TitleWithButton(),

        // MyFlightBookingScreen(),
      ],
    );
  }
}
