import 'package:flights/core/color/app_color.dart';
import 'package:flights/core/utils/app_icons.dart';
import 'package:flights/core/widgets/custom_appbar.dart';
import 'package:flights/core/widgets/custom_button.dart';
import 'package:flights/core/widgets/custom_text_form_field.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/count_passenger.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/select_date.dart';
import 'package:flights/features/book_flights/presentation/widgets/new_booking_bottom_sheet/trip_destination.dart';
import 'package:flights/features/book_flights/presentation/widgets/search_bottom_sheet/custom_from_to_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class OpenBottomSheet {
  //------------------------ new book -----------------------------
  static void newBooking(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: deviceHeight - kToolbarHeight,
          child: Scaffold(
            appBar: CustomAppBar(
              isArrow: true,
              isTitle: true,
              title: "New Booking",
              leadingPress: () {
                Navigator.pop(context);
              },
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                children: [
                  const TripDestination(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const SelectDate(),
                  SizedBox(
                    height: 15.h,
                  ),
                  const CustomCountPassengers()
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  //------------------------ search -----------------------------
  static void search(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: deviceHeight - kToolbarHeight,
          child: Scaffold(
            appBar: CustomAppBar(
              isArrow: false,
              isTitle: true,
              title: "Search",
              leadingIcon: AppIcons.xmark,
              leadingPress: () {
                Navigator.pop(context);
              },
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      const CustomFromAndToSearch(),
                      SizedBox(
                        height: 35.h,
                      ),
                      CustomTextFormField(
                        onChanged: (value) {},
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                    isLocation: true,
                    radius: false,
                    colorButton: AppColor.white,
                    colorText: AppColor.black,
                    onPressed: () {},
                    title: "Current Location",
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final List<String> items = [
//     'Apple',
//     'Apple1',
//     'Apple',
//     'Banana',
//     'Cherry',
//     'Durian',
//     'Elderberry',
//     'Fig',
//     'Grape',
//     'Honeydew',
//     'Iris',
//     'Jackfruit',
//     'Kiwi',
//     'Lemon',
//     'Mango',
//     'Nectarine',
//     'Orange',
//     'Papaya',
//     'Quince',
//     'Raspberry',
//     'Strawberry',
//     'Tangerine',
//     'Ugli fruit',
//     'Vanilla bean',
//     'Watermelon',
//     'Xigua',
//     'Yellow passionfruit',
//     'Zucchini',
//   ];

//   String _searchQuery = '';

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           onChanged: (value) {
//             setState(() {
//               _searchQuery = value;
//             });
//           },
//           decoration: const InputDecoration(
//             hintText: 'Search...',
//           ),
//         ),
//         Visibility(
//           visible: _searchQuery.isNotEmpty,
//           child: SizedBox(
//             height: 150,
//             child: ListView.builder(
//               itemCount: items.length,
//               itemBuilder: (context, index) {
//                 final item = items[index];
//                 if (_searchQuery.isNotEmpty &&
//                     !item
//                         .toLowerCase()
//                         .startsWith(_searchQuery.toLowerCase())) {
//                   return const SizedBox.shrink();
//                 }
//                 return ListTile(title: Text(item));
//               },
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
