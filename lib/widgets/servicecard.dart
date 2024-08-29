import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/widgets/Services.dart';
import 'package:portfolio/widgets/ServicesData.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomShapeClipper(),
      child: Container(
        height: 330,
        width: 300,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 0, 0, 0),
          border: Border.all(color: Colors.grey, width:1),
          borderRadius: BorderRadius.all(Radius.circular(30))
        ),
        child: Stack(
          children: [
            BackdropFilter(
                filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            )),
            Container(
              decoration: BoxDecoration(
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
            ServicesData(),
          ],
        ),
      ),
    );
  }
}