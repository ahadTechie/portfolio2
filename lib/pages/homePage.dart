import 'package:flutter/material.dart';
import 'package:portfolio/Sections/emailSection.dart';
import 'package:portfolio/Sections/footerSection.dart';
import 'package:portfolio/Sections/introSection.dart';
import 'package:portfolio/Sections/myServicesSection.dart';
import 'package:portfolio/Sections/portfolioSection.dart';
import 'package:portfolio/Sections/testimonialsSection.dart';
import 'package:portfolio/Sections/whyHireMeSection.dart';
import 'package:portfolio/Sections/workExpirenceSection.dart';
import 'package:portfolio/widgets/navigationBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CustomNavigationBar(),
          const IntroSection(),
          const Myservicessection(),
          WorkExperienceSection(),
          WhyHireMeSection(),
          PortfolioSection(),
          TestimonialsSection(),
          EmailSection(),
          FooterSection(),

        ],
      ),
    );
  }
}
