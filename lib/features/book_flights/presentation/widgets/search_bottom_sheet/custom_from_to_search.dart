import 'package:flights/features/book_flights/presentation/widgets/search_bottom_sheet/contain_from_to_search.dart';
import 'package:flutter/material.dart';

class CustomFromAndToSearch extends StatelessWidget {
  const CustomFromAndToSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: ContainFromAndToSearch(
            leftRadius: true,
            title: "From",
            cityOrAirport: "city or Airport",
          ),
        ),
        Expanded(
          child: ContainFromAndToSearch(
            rightRaduis: true,
            title: "To",
            cityOrAirport: "city or Airport",
          ),
        ),
      ],
    );
  }
}
