import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';
import 'package:portfolio/widgets/SingleReviewCard.dart';
import 'package:portfolio/widgets/reviewsCard.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          image: DecorationImage(
            image: AssetImage(Images.myServicesBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0, bottom:100),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Testimonials That\nSpeak to My Results",
                    style: TextStyles.baseFont.copyWith(
                        color: AppColors.LightTextColor,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Explore what clients and partners have to say about their experiences and\noutcomes working with me. Discover firsthand accounts that highlight\nsuccessful collaborations, outstanding achievements, and transformative\nresults.",
                    style: TextStyles.baseFont.copyWith(
                        color: AppColors.LightTextColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: double.infinity,
                height: 250,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                 ReviewsCard(),
                 SizedBox(width: 30),
                 ReviewsCard(),
                 SizedBox(width: 30),
                 ReviewsCard(),
                 SizedBox(width: 30),
                 ReviewsCard(),
                 SizedBox(width: 30),
                 ReviewsCard(),
                 SizedBox(width: 30),
                 ReviewsCard(),
                 SizedBox(width: 30),

                 
                ]),
              )
            ],
          ),
        ));
  }
}
