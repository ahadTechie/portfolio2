import 'package:flutter/material.dart';
import 'package:portfolio/constraints/ImagesPath.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';
import 'package:portfolio/widgets/navItem.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 200),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.SecondaryColor,
            borderRadius: BorderRadius.circular(50)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                NavItem(text: "Home"),
                NavItem(text: "About us"),
                NavItem(text: "Services"),
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(35)),
                        image: DecorationImage(
                          image: AssetImage(Images.ahadPic),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      "Abdul Ahad",
                      style: TextStyles.baseFont.copyWith(
                        color: AppColors.LightTextColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  NavItem(text: "Resume"),
                  NavItem(text: "Porfolio"),
                  NavItem(text: "Contact us"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
