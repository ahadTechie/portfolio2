import 'package:flutter/material.dart';
import 'package:portfolio/constraints/colors.dart';
import 'package:portfolio/constraints/textStyles.dart';

class NavItem extends StatefulWidget {
  final String text;

  const NavItem({super.key, required this.text});

  @override
  _NavItemState createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: _isHovered ? AppColors.PrimaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Text(
            widget.text,
            style: TextStyles.baseFont.copyWith(
              color: AppColors.LightTextColor,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}
