import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/textStyles.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(
        top: 0,
        right: 0,
        left: 0,
      ),
      child: Container(
        height: screenHeight,
        child: Stack(children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.eclipse,
                width: 500,
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                style: TextStyles.baseFont.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: screenHeight * 0.06,
                ),
                "I'm Abdul Ahad,\nUI/UX Designer,",
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            child: Align(
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: null,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 67, 67, 67)),
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 8),
                      child: Text(
                        "Hello!",
                        style: TextStyles.baseFont.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 200,
              left: 350,
              child: Image.asset(
                Images.leftCurvedLines,
                width: null,
              )),
          Positioned(
              top: 55,
              left: 660,
              child: Image.asset(
                Images.rightCurvedLines,
                width: 30,
              )),
          Positioned(
              top: null,
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                Images.lady,
                height: 400,
              )),
          Positioned(
            top: 0,
            bottom: 0, // Stretch the Column to take up the full vertical space
            left: 50, // Position the Column 50 pixels from the left edge
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Center the children vertically within the Column
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align children to the left
              children: [
                Image.asset(
                  Images.quotes,
                  width: 30,
                ),
                SizedBox(height: 20),
                Text(
                  "Abdul Ahad's brilliant UI/UX design\ntransformed our app's interface.\nAbsolutely recommend!",
                  style: TextStyles.baseFont.copyWith(
                    color: const Color.fromARGB(255, 51, 50, 50),
                    fontSize: 12,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0, // Stretch the Column to take up the full vertical space
            right: 50, // Position the Column 50 pixels from the right edge
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Center the children vertically within the Column
              crossAxisAlignment:
                  CrossAxisAlignment.end, // Align children to the right
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: null,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: null,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: null,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: null,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star,
                      size: null,
                      color: Colors.orange,
                    ),
                  ],
                ),
                Text(
                  "3 Years",
                  style: TextStyles.baseFont.copyWith(
                    color: Colors.black,
                    fontSize: 29,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Experience",
                  style: TextStyles.baseFont.copyWith(
                    color: const Color.fromARGB(255, 72, 71, 71),
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
