import 'package:flutter/material.dart';

class RoundedImagesWidget extends StatelessWidget {
  final String path;
  const RoundedImagesWidget({
    required this.path,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 120.0,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}