import 'package:flutter/material.dart';

class HorizontailMovieList extends StatelessWidget {
  const HorizontailMovieList({
    super.key,
    required this.title,
    required this.itemCount,
    required this.itemBuilder,
    this.hieghtOfList = 230,
  });
  final String title;
  final int itemCount;
  final double hieghtOfList;

  final IndexedWidgetBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, bottom: 15),

      color: const Color(0xff2f2f2f),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),

          SizedBox(
            height: hieghtOfList,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: itemCount,
              itemBuilder: itemBuilder,
            ),
          ),
        ],
      ),
    );
  }
}
