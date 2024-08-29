import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';

class WhyHireMeSection extends StatelessWidget {
  const WhyHireMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 220, 221, 222),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:80.0, bottom: 80.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Images.hireMePic,
                height: 500,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Why Hire me?",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.SecondaryColor,
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(height: 30),
                  Text(
                      "Hire me for innovative designs, user-focused\nsolutions, and a proven track record of\nenhancing user experiences.",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.DescriptionTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 50,
                  ),
                  Text("50+",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.SecondaryColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      )),
                  Text("Project Completed",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.DescriptionTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    onPressed: () {
                      // Your onPressed logic here
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 30),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                          AppColors.SecondaryColor), // Text color
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyles.baseFont.copyWith(
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(
                            color: Colors.black, width: 2), // Black border
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(25), // Border radius
                        ),
                      ),
                    ),
                    child: const Text("Hire me"),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
