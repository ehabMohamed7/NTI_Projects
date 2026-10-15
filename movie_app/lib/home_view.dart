import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/widgets/movie_poster.dart';
import 'package:movie_app/widgets/movie_card.dart';

import 'assets.dart';
import 'widgets/horizontail_movie_list.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const String routeName = 'HomeView';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<String> imagesOfNewReleases = const [
    Assets.assetsImagesAnnabelle,
    Assets.assetsImagesDeadpool,
    Assets.assetsImagesNarcos,
    Assets.assetsImagesToy,
  ];

  final List<String> imagesOfRecommended = const [
    Assets.assetsImagesDeadpool,
    Assets.assetsImagesDeadpool,
    Assets.assetsImagesDeadpool,
    Assets.assetsImagesDeadpool,
    Assets.assetsImagesDeadpool,
    Assets.assetsImagesDeadpool,
  ];

  late final List<bool> bookmarkedMovies = List<bool>.filled(
    imagesOfNewReleases.length,
    false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            Stack(
              children: [
                Image.asset(Assets.assetsImagesImage),

                Positioned(
                  top: 80,
                  left: 0,
                  right: 0,
                  bottom: 65,
                  child: SvgPicture.asset(Assets.assetsIconsPlayButton2),
                ),
              ],
            ),

            const SizedBox(height: 15),

            Text(
              'Dora and the lost city of gold',
              style: TextStyle(color: Colors.white),
            ),

            Text(' 2019  PG-13  2h 7m', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 25),

            SizedBox(height: 15),

            HorizontailMovieList(
              title: 'New Releases',
              itemCount: imagesOfNewReleases.length,
              itemBuilder: (ctx, index) {
                return MoviePoster(
                  images: imagesOfNewReleases[index],
                  onTap: () {
                    setState(() {
                      bookmarkedMovies[index] = !bookmarkedMovies[index];
                    });
                  },
                  isBookmarked: bookmarkedMovies[index],
                );
              },
              hieghtOfList: 150,
            ),

            SizedBox(height: 15),

            HorizontailMovieList(
              title: 'Recommended',
              itemCount: imagesOfNewReleases.length,
              itemBuilder: (ctx, index) {
                return MovieCard();
              },
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
