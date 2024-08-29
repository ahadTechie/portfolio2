import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';

class SingleReviewCard extends StatelessWidget {
  const SingleReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(35)),
                      image: DecorationImage(
                        image: AssetImage(Images.ahadPic),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Abdul Ahad",
                          style: TextStyles.baseFont.copyWith(
                            color: AppColors.LightTextColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          )),
                      Text("CEO, Sarte",
                          style: TextStyles.baseFont.copyWith(
                            color: AppColors.LightTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w100,
                          ))
                    ],
                  )
                ],
              ),
              SizedBox(height: 8),
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
                  Text(
                    " 5.0",
                    style: TextStyles.baseFont.copyWith(
                        color: AppColors.LightTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )
                ],
              )
            ]),
            Image.asset(Images.quotesDown, width: 120),
          ],
        ),
        Text("consectetur adipiscing elit. Sed congue interdum ligula a dignissim. Lorem\nipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis orci elementum\negestas lobortis.Sed lobortis orci elementum egestas lobortis.Sed lobortis orci\nelementum egestas lobortis.",
        style: TextStyles.baseFont.copyWith(
          color: const Color.fromARGB(255, 193, 193, 200),
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
        )
      ]),
    );
  }
}
