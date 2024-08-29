import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0),
        child: Column(
          children: [
            Text(
              "Have an Awesome Project\nIdea? Let’s Discuss",
              textAlign: TextAlign.center,
              style: TextStyles.baseFont.copyWith(
                color: AppColors.SecondaryColor,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: 699,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 1, color: const Color.fromARGB(67, 152, 162, 179)),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(61, 253, 133, 58),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.mail_rounded,
                        color: AppColors.PrimaryColor,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 18),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter Email Address",
                          hintStyle: TextStyle(
                            fontWeight:
                                FontWeight.w300, // Set font weight to 400
                            color: Colors.grey[600], // Set a grayish color
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 20),
                        ),
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.PrimaryColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 25),
                        ),
                        child: Text(
                          'Send',
                          style: TextStyles.baseFont.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: AppColors.LightTextColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      Images.star,
                      width: 20,
                    ),
                    Text(
                      "4.9/5 Average Ratings",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.DarkTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Image.asset(
                      Images.award,
                      width: 20,
                    ),
                    Text(
                      "25+ Winning Awards",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.DarkTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Image.asset(
                      Images.shield,
                      width: 20,
                    ),
                    Text(
                      "Certified UI/UX Designer",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.DarkTextColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
