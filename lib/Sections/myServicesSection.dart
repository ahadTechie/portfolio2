import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/textStyles.dart';
import 'package:portfolio/widgets/Services.dart';

class Myservicessection extends StatelessWidget {
  const Myservicessection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        image: DecorationImage(
          image: AssetImage(Images.myServicesBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Services",
                style: TextStyles.baseFont.copyWith(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Design is not just what it looks like and feels like. Design is how\nit works.",
                style: TextStyles.baseFont.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 100),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 330,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
              SizedBox(width: 20),
              Services(),
            ]),
          ),
        )
      ]),
    );
  }
}
