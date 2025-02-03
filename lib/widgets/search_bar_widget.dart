import 'package:flutter/material.dart';
import 'package:netflix_arif/constans.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  String? query;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: const BoxDecoration(
        color: NetflixColorPallete.darkGrey,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 6.0,
        vertical: 2.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            color: NetflixColorPallete.grey,
            size: 28.0,
          ),
          const SizedBox(width: 4.0),
          Expanded(
            child: TextField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.top,
              onChanged: (value) {
                query = value;
              },
              decoration: const InputDecoration(
                hintText: 'Search Movie ...',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: NetflixColorPallete.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  decoration: TextDecoration.none,
                ),
              ),
              style: const TextStyle(
                color: NetflixColorPallete.cararra,
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                decorationThickness: 0,
              ),
              cursorColor: NetflixColorPallete.cararra,
              autofocus: true,
            ),
          ),
        ],
      ),
    );
  }
}