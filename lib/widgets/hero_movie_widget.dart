import 'package:flutter/material.dart';
import 'package:netflix_arif/constans.dart';
import 'package:netflix_arif/widgets/cta_button_widgets.dart';

class HeroMovieWidget  extends StatelessWidget {
  const HeroMovieWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 10.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 16.0,
      ),
      height: 400,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/exhuma.jpg"),
          fit: BoxFit.cover, 
        ),
        border: Border.all(
          width: 0.1,
          color: NetflixColorPallete.cararra,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          const Text(
            "Exhuma",
            style: TextStyle(
              color: NetflixColorPallete.cararra,
              fontSize: 36.0,
              fontWeight: FontWeight.bold, 
            ),
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Expanded(
                child: CtaButtonWidgets( 
                  backgroundColor: NetflixColorPallete.cararra,
                  onPressed: () {},
                  text: const Text(
                    "Play",
                    style: TextStyle(
                      color: NetflixColorPallete.mineShaft,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  icon: const Icon(
                    Icons.play_arrow,
                    color: NetflixColorPallete.mineShaft,
                    size: 36.0,
                  ),
                ), 
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: CtaButtonWidgets( 
                  backgroundColor: NetflixColorPallete.mineShaft,
                  onPressed: () {},
                  text: const Text(
                    "My list",
                    style: TextStyle(
                      color: NetflixColorPallete.cararra,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: NetflixColorPallete.cararra,
                    size: 36.0,
                  ),
                ), 
              ),
            ],
          )
        ],
      ),
    );
  }
}