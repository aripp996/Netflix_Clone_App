import 'package:flutter/material.dart';
import '../constans.dart';
import 'movie_tile_widget.dart';
import 'title_list_widgets.dart';


class VerticalMovieListWidget extends StatelessWidget {
  final String title;
  const VerticalMovieListWidget({
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
          title: title,
        ),
        const SizedBox(height: 8.0),
        ListView.separated(
          padding: const EdgeInsets.only(
            bottom: 16.0,
          ),
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return MovieTileWidget(
            title: DummyData.backdropListTitle[index], 
            assetPath: "assets/images/backdrop/${DummyData.backdropListsPath[index]}",
            );
          }, 
          separatorBuilder: (_, __) {
            return const SizedBox(height: 8.0);
          }, 
          itemCount: DummyData.backdropListsPath.length,
        ),
      ],
    );
  }
}