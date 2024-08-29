import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:portfolio/widgets/servicecard.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ServiceCard(),
        Positioned(
          bottom: 0,
          right: 20,
          child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color(0xff1D2939),
              ),
              child: Transform.rotate(
                angle: -120 * (3.14159 / 180), // 10 degrees to radians
                child: Icon(Icons.arrow_downward_outlined, size: 50, color: Colors.white),
              )),
        )
      ],
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.1, 0);
    path.lineTo(size.width * 0.9, 0);
    path.quadraticBezierTo(size.width, 0, size.width, size.height * 0.1);
    path.lineTo(size.width, size.height * 0.6);
    path.quadraticBezierTo(
        size.width, size.height * 0.7, size.width * 0.9, size.height * 0.7);
    path.lineTo(size.width * 0.7, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.7,
        size.width * 0.6, size.height * 0.8);
    path.lineTo(size.width * 0.6, size.height * 0.9);
    path.quadraticBezierTo(
        size.width * 0.6, size.height, size.width * 0.5, size.height);
    path.lineTo(size.width * 0.1, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height * 0.9);
    path.lineTo(0, size.height * 0.1);
    path.quadraticBezierTo(0, 0, size.width * 0.1, 0);

    path.close(); // This ensures the path is properly closed

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
