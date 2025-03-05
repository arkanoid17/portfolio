import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';

class Cloudedz extends StatelessWidget {
  const Cloudedz({super.key});

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
                      onTap: ()=>AppUtils.navigateToUrl(AppStrings.cloudedzLinkedIn),
                      child: Image.asset("assets/images/ic_cloudedz.jpeg",width: 50,height: 50,)
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Android Developer",
                        style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.bold, Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "CloudEdz Pvt Ltd  •  Full-time",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.normal, Colors.black54),
                      ),
                      Text(
                        "May 2019 - Apr 2021  •  2 years",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.normal, Colors.black54),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
    );;
  }
}
