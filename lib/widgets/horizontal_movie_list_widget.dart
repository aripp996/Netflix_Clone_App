import 'package:flutter/material.dart';
import 'package:netflix_arif/widgets/rounded_images_widget.dart';
import 'package:netflix_arif/widgets/title_list_widgets.dart';

class HorizontalMovieListWidget extends StatelessWidget {
  final String title;
  final List<String> listpath;
  const HorizontalMovieListWidget({
    required this.title,
    required this.listpath,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0, 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleListWidgets(title: title),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 180,
            child: ListView.separated(
            itemBuilder: (context, index) {
              return RoundedImagesWidget(
                path: "assets/images/${listpath[index]}" 
              );
            },
            separatorBuilder: (_, __) {
              return const SizedBox(width: 8.0);
            }, 
            itemCount: listpath.length,
            ),
          )
        ],
      ),
    );
  }
}