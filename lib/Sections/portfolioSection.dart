import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(80),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lets have a look at\nmy Portfolio",
                  style: TextStyles.baseFont.copyWith(
                    color: AppColors.PrimaryColor,
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.PrimaryColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Text(
                      "See all",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.LightTextColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 450, // Set your desired width
                  height: 300, // Set your desired height
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            Images.project1), // Replace with your image path
                        fit: BoxFit
                            .cover, // Adjust how the image fits the container
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("ModaWare",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Makes the border round
                          border: Border.all(
                            color: AppColors.PrimaryColor, // Border color
                            width: 1, // Border width
                          ),
                        ),
                        child: Icon(Icons.arrow_forward_outlined,
                            size: 30, // Adjust the icon size as needed
                            color: AppColors.PrimaryColor),
                      ),
                    )
                  ]), // You can add child widgets here
                ),
                SizedBox(width: 50,),
                Container(
                  width: 450, // Set your desired width
                  height: 300, // Set your desired height
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            Images.project1), // Replace with your image path
                        fit: BoxFit
                            .cover, // Adjust how the image fits the container
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text("ModaWare",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.all(
                            10), // Adjust padding as needed
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Makes the border round
                          border: Border.all(
                            color: AppColors.PrimaryColor, // Border color
                            width: 1, // Border width
                          ),
                        ),
                        child: const Icon(Icons.arrow_forward_outlined,
                            size: 30, // Adjust the icon size as needed
                            color: AppColors.PrimaryColor),
                      ),
                    )
                  ]), // You can add child widgets here
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
