import 'package:flutter/material.dart';
import 'package:netflix_arif/constans.dart';
import 'package:netflix_arif/widgets/hero_movie_widget.dart';
import 'package:netflix_arif/widgets/horizontal_movie_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NetflixColorPallete.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "For Arif Rizki",
          style: TextStyle(
            color: NetflixColorPallete.cararra,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0), 
            child: Icon(
              Icons.cast,
              color: NetflixColorPallete.cararra,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: ListView(
        children: const [
          HeroMovieWidget(),
          SizedBox(height: 12.0),
          HorizontalMovieListWidget(
            title: "Trending Of The Day", 
            listpath: DummyData.movieListPath,
          ),
          SizedBox(height: 12.0),
          HorizontalMovieListWidget(
            title: "Trending Of The Week", 
            listpath: DummyData.movieListPath,
          ),
          SizedBox(height: 12.0),
          HorizontalMovieListWidget(
            title: "Horor Genre", 
            listpath: DummyData.movieListPath,
          ),
          SizedBox(height: 12.0),
          HorizontalMovieListWidget(
            title: "Comedy Genre", 
            listpath: DummyData.movieListPath,
          ),
        ],
      ),
    );
  }
}