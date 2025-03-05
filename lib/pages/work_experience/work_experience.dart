import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';

import '../../components/commons/header_indicator.dart';
import '../../theme/app_theme.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.pagePadding),
      child: Column(
        children: [
          Row(
            children: [
              const HeaderIndicator(),
              const SizedBox(width: 10,),
              Text(AppStrings.experience,style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.w500, Colors.black),),
            ],
          ),
          const SizedBox(height: 10,),
          // Text(AppStrings.expDesc,style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.w400, Colors.black54),),
          Text.rich(
            TextSpan(
              style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w400, Colors.black),
              children: [
                TextSpan(text: "I have been working full time professional for "),
                TextSpan(
                  text: "6 years",
                  style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.bold, Colors.blue)
                ),
                TextSpan(text: " and have interesting experiences. At the dawn of my career I primarily knew "),
                TextSpan(
                  text: "Java",
                  style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.bold, Colors.blue),
                ),
                TextSpan(text: " and took up my first role as an "),
                TextSpan(
                  text: "Android Developer",
                  style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.bold, Colors.blue),
                ),
                TextSpan(text: " with "),
                TextSpan(
                  text: "Java",
                  style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.bold, Colors.blue),
                ),
                TextSpan(text: ". As my journey progressed and I embarked on new challenges where I took up "),
                TextSpan(
                  text: "Flutter",
                  style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.bold, Colors.blue),
                ),
                TextSpan(text: " to build cross platform mobile applications. Further down my career lane I have also taken up "),
                TextSpan(
                  text: "Python",
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                ),
                TextSpan(text: " with "),
                TextSpan(
                  text: "Django",
                  style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.bold, Colors.blue),
                ),
                TextSpan(text: " for backend work as in my book we should not shy away from branching out in different technologies."),
              ],
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 20,),
          WorkExperienceTimeLine()
        ],
      ),
    );
  }
}
