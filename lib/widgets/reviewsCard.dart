import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/SingleReviewCard.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 630,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0),
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Stack(
        children: [
          BackdropFilter(
              filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          )),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(118, 255, 255, 255).withOpacity(0.2),
                  const Color.fromARGB(103, 255, 255, 255).withOpacity(0.1)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          SingleReviewCard(),
        ],
      ),
    );
  }
}
