import 'package:flutter/material.dart';

import '../constans.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/vertical_movie_list_widget.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: NetflixColorPallete.black,
        body: ListView(
          children: [
            SearchBarWidget(),
            SizedBox(height: 12.0),
            VerticalMovieListWidget(title: "Now Playing"),
          ],
        ),
      ) 
    );
  }
}