import 'package:flutter/material.dart';
import 'package:portfolio/constraints/colors.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 250, // Adjusted width for better spacing
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Set the background color here
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 15, // Set the text size here
                ),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.DarkTextColor,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal:
                          8), // Adjusted padding for vertical centering
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors
                  .PrimaryColor, // Optional: background color for the icon button
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ), // Optional: rounded corners
            ),
            child: IconButton(
              icon: Icon(Icons.send_rounded, size: 35),
              onPressed: () {
                // Add your onPressed logic here
              },
              color: AppColors.LightTextColor, // Icon color
            ),
          ),
        ],
      ),
    );
  }
}
