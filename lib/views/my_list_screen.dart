import 'package:flutter/material.dart';

import '../constans.dart';
import '../widgets/vertical_movie_list_widget.dart';


class MyListScreen extends StatelessWidget {
  const MyListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NetflixColorPallete.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "My List",
          style: TextStyle(
            fontSize: 24.0,
            color: NetflixColorPallete.cararra,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {}, 
            icon: const Icon(
              Icons.edit,
              color: NetflixColorPallete.cararra,
              size: 24.0,
            )
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: VerticalMovieListWidget(title: "Favorites"),
      ),
    );
  }
}