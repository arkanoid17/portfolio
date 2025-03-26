import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';

class GradientButton extends StatelessWidget {

  final String title;
  final Function onPressed;

  const GradientButton({super.key, required this.title, required this.onPressed});



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent, // Make button transparent
        shadowColor: Colors.transparent, // Remove shadow effect
        padding: EdgeInsets.zero, // Ensure button fits inside Container
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: AppDecoration.gradient,
          borderRadius: BorderRadius.circular(8), // Apply rounded corners
        ),
        child: Container(
          padding: const EdgeInsets.only(left:10,right: 10),
          height: 30,
          alignment: Alignment.center,
          child: Text(
            title,
            style: AppDecoration.smallWhiteText,
          ),
        ),
      ),
    )
    ;
  }
}
