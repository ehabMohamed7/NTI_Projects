import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/assets.dart';

class MoviePoster extends StatelessWidget {
  const MoviePoster({
    super.key,
    required this.images,
    this.onTap,
    this.isBookmarked = false,
  });

  final String images;
  final bool isBookmarked;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, bottom: 10),
      child: Stack(
        children: [
          Image.asset(images, fit: BoxFit.cover, width: 105, height: 150),
          Positioned(
            top: 0,
            left: 2,
            right: 75,
            bottom: 110,
            child: GestureDetector(
              onTap: onTap,
              child: isBookmarked
                  ? SvgPicture.asset(Assets.assetsIconsIconAwesomeBookmark)
                  : SvgPicture.asset(Assets.assetsIconsBookmark),
            ),
          ),
        ],
      ),
    );
  }
}
