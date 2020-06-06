import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SliderBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 300,
            child: CachedNetworkImage(
              imageUrl:
                  "https://image.tmdb.org/t/p/w300_and_h450_bestv2/xBHvZcjRiWyobQ9kxBhO6B2dtRI.jpg",
              fit: BoxFit.fitHeight,
            ),
          );
        },
        itemCount: 4,
        viewportFraction: 0.5,
        scale: 0.5,
      ),
    );
  }
}
