import 'package:flutter/material.dart';

void main() {
  runApp(const FlightsApp());
}

class FlightsApp extends StatelessWidget {
  const FlightsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
          body: Center(
        child: Text("kamal"),
      )),
    );
  }
}
