import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text("My Work Experience",
                  style: TextStyles.baseFont.copyWith(
                    color: AppColors.PrimaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("PixelCraft Studios",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DarkTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("New York, NY, USA",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DescriptionTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: 60),
                    Text("CreativeWhiz(Remote)",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DarkTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("Sydney, NSW, Australia",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DescriptionTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: 60),
                    Text("DesignHive(Remote)",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DarkTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("New York, NY, USA",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DescriptionTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
                SizedBox(
                  width: 150,
                ),
                Column(children: [
                  Image.asset(Images.separator, height:280),
                ]),
                SizedBox(
                  width: 150,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Experince Designer",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DarkTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("Designed mobile and web apps, conducting\nuser research to enhance usability.",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DescriptionTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: 60),
                    Text("UI/UX Designer",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DarkTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("Led website redesigns, improving user\nengagement through user-centered design.",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DescriptionTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(height: 60),
                    Text("Lead UX Designer",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DarkTextColor,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        )),
                    Text("Managed a design team, creating responsive\ninterfaces for tech and finance clients.",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.DescriptionTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
