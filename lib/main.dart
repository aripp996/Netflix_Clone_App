import 'package:flutter/material.dart';

import 'views/main_navigator_screen.dart';


void main() {
  runApp(const netflix_arif());
}

// ignore: camel_case_types
class netflix_arif extends StatelessWidget {
  const netflix_arif({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Netflix Clone App",
      home: MainNavigatorScreen(),
    );
  }
}