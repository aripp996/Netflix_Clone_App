import 'package:flutter/material.dart';
import 'package:netflix_arif/constans.dart';

class TitleListWidgets extends StatelessWidget {
  final String title;
  final EdgeInsets? padding;
  const TitleListWidgets({
    required this.title,
    this.padding,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Text(
        title,
        style: const TextStyle(
          color: NetflixColorPallete.cararra,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}