import 'package:flutter/material.dart';

import '../constans.dart';
import 'rounded_images_widget.dart';
import 'title_list_widgets.dart';


class VerticalMovieGridWidget extends StatelessWidget {
  final String title;
  const VerticalMovieGridWidget({
    required this.title,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleListWidgets(
          padding: const EdgeInsets.only(
            left: 24.0,
          ),
          title: title
        ),
        const SizedBox(height: 8.0),
        GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 6,
            crossAxisSpacing: 6,
            childAspectRatio: 82 / 96,
          ), 
          itemBuilder: (context, Index) {
            return RoundedImagesWidget(
              path: "assets/images/${DummyData.movieListPath[Index]}", 
            );
          },
          itemCount: DummyData.movieListPath.length,
        ),
      ],
    );
  }
}