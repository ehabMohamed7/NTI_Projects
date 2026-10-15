import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/assets.dart';
import 'package:movie_app/widgets/movie_poster.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        color: Color(0xff373837),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MoviePoster(images: Assets.assetsImagesDeadpool),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SvgPicture.asset(Assets.assetsIconsStar2),
                  const SizedBox(width: 5),
                  Text('7.7', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            const SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Deadpool 2', style: TextStyle(color: Colors.white)),
            ),

            const SizedBox(width: 5),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                '2018 R 1h 59m',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
