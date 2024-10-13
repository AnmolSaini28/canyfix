// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class StarRatingWidget extends StatefulWidget {
  const StarRatingWidget({super.key});

  @override
  _StarRatingWidgetState createState() => _StarRatingWidgetState();
}

class _StarRatingWidgetState extends State<StarRatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Leave a',
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(40, 40, 40, 1),
            ),
          ),
          ShaderMask(
            shaderCallback: (bounds) => const LinearGradient(
              colors: [
                Color.fromRGBO(11, 43, 79, 1),
                Color.fromRGBO(114, 161, 252, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
            child: const Text(
              'Star Rating',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return IconButton(
                icon: const Icon(
                  Icons.star,
                  color: Color.fromRGBO(207, 207, 207, 1),
                  size: 46.02,
                ),
                onPressed: () {},
              );
            }),
          ),
          const Text(
            'Leave your review',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(207, 207, 207, 1),
            ),
          ),
        ],
      ),
    );
  }
}
