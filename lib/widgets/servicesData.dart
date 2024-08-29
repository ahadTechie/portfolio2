import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/textStyles.dart';

class ServicesData extends StatelessWidget {
  const ServicesData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 8,
              ),
              child: Text("UI/UX Design",
                  style: TextStyles.baseFont.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  vertical: 5), // Vertical margin between sections
              height: 1, // Height of the line
              color: Colors.grey, // Color of the line
            ),
            SizedBox(height: 35),
            Container(
              height: 243,
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.white, width: 1)
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 260,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(168, 117, 117, 117),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 280,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color(0xff9E9D9D),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 0,
                    left: 0,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        Images.project1,
                        fit: BoxFit
                            .cover, // Ensures the image fits the container
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
  }
}