import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/commons/circle_image.dart';
import 'package:portfolio/components/commons/hover_elevated_card.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/strings.dart';

class Thriwin extends StatelessWidget {
  const Thriwin({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0, top: 15.0, bottom: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                      onTap: ()=>AppUtils.navigateToUrl(AppStrings.thriwinLinkedIn),
                      child: Image.asset("assets/images/thriwin_logo.jpeg",width: 50,height: 50,)
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Software Developer",
                        style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.bold, Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Thriwin.io  •  Full-time",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.normal, Colors.black54),
                      ),
                      Text(
                        "Apr 2021 - Present  •  4 years",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.normal, Colors.black54),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );
  }
}
