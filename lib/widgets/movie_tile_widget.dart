import 'package:flutter/material.dart';
import 'package:netflix_arif/constans.dart';

class MovieTileWidget extends StatelessWidget {
  final String title;
  final String assetPath;
  const MovieTileWidget({
    required this.title,
    required this.assetPath,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SizedBox(
              width: 140,
              child: Image.asset(
                assetPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14.0,
              color: NetflixColorPallete.cararra,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.play_circle_outline,
            color: NetflixColorPallete.cararra,
            size: 40.0,
          )
        ],
      ),
    );
  }
}