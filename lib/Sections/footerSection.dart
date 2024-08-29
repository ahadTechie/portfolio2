import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';
import 'package:portfolio/widgets/emailField.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: Color(0xff272727),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 60,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lets Connect there",
                    style: TextStyles.baseFont.copyWith(
                      color: AppColors.LightTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.PrimaryColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Hire me',
                            style: TextStyles.baseFont.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: AppColors.LightTextColor,
                            ),
                          ),
                          SizedBox(width: 8),
                          Transform.rotate(
                            angle:
                                -120 * 3.1415927 / 180, // Rotate by 45 degrees
                            child: Icon(
                              Icons
                                  .arrow_downward_sharp, // Replace with the desired icon
                              color: AppColors.LightTextColor,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: const Color.fromARGB(114, 152, 162, 179),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 60,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(35)),
                              image: DecorationImage(
                                image: AssetImage(Images.ahadPic),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Abdul Ahad",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(
                        "As a UI/UX designer, I create designs that blend visual appeal with\nseamless functionality. My focus is on crafting user experiences\nthat are both intuitive and engaging, ensuring that every interaction\nis as smooth as it is visually compelling.",
                        style: TextStyles.baseFont.copyWith(
                          color: AppColors.LightTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Image.asset(Images.facebook),
                          SizedBox(width: 4),
                          Image.asset(Images.whatsapp),
                          SizedBox(width: 4),
                          Image.asset(Images.instagram),
                          SizedBox(width: 4),
                          Image.asset(Images.twitter),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Navigation",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.PrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Home",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "About Us",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Service",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Resume",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Project",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Contact",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.PrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "+91 7738443636",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "ahad.ux@gmail.com",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            "Portfolio-jcrea.com",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.LightTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Get the latest information",
                            style: TextStyles.baseFont.copyWith(
                              color: AppColors.PrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20),
                          EmailField(),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
