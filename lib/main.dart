import 'package:flights/core/functions/theme_data.dart';
import 'package:flights/core/utils/app_router.dart';
import 'package:flights/features/splash/presentation/view/spalsh_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlightsApp());
}

class FlightsApp extends StatelessWidget {
  const FlightsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData(),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
