import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';
import 'exp_time_line_tile.dart';

class Neevan extends StatelessWidget {
  const Neevan({super.key});

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
                      onTap: ()=>AppUtils.navigateToUrl(AppStrings.neevanLinkedIn),
                      child: Image.asset("assets/images/ic_neevan.jpeg",width: 50,height: 50,)
                  ),
                  const SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Android Developer Intern",
                        style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.bold, Colors.black),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "Neevan IT Solutions Pvt Ltd  •  Internship",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.normal, Colors.black54),
                      ),
                      Text(
                        "Oct 2018 - Apr 2019  •  7 months",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.normal, Colors.black54),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              ExpTimeLineTile(
                endChild: ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  title: Text(
                    "Responsible to build common components across the mobile application for match-making application with features like Auth, Dashboard, Profile management, match listing and others.",
                    style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                  ),
                ),
                isStart: true,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  title: Text(
                    "Responsible to building continuous API integrations across modules like profile details and updating these details, did also contribute heavily in Auth module in User registration.",
                    style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                  ),
                ),
                isStart: false,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  title: Text(
                    "Responsible for building aadhaar verification for users during registration via scanning QR code of their aadhaar card to cross verify the entered details from user.",
                    style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                  ),
                ),
                isStart: false,
                isEnd: true,
              ),
              const SizedBox(height: 20,),
            ],
          ),
        )
    );
  }
}
