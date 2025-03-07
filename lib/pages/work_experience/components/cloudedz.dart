import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';
import 'exp_time_line_tile.dart';
import 'job_project_card.dart';

class Cloudedz extends StatelessWidget {

  final BoxConstraints? constraints;

  const Cloudedz({super.key, this.constraints});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0,right: 8.0, top: 15.0, bottom: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              ),
              const SizedBox(height: 20,),
              Text(AppStrings.rolesAndResp,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w500, Colors.black),),
              const SizedBox(height: 10,),

              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:constraints==null?8.0:0.0),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text(
                      "Responsible to build Mobile Application for School management. Created individual modules for school content management, attendance management, online exams and many more. ",
                      style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                    ),
                  ),
                ),
                isStart: true,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:constraints==null?8.0:0.0),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text(
                      "Responsible to build online live examinations for over 50k live users and have a seamless experience while they are at it. Used S3 bucket to bulky collect responses and keep synchronized across for all users.",
                      style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                    ),
                  ),
                ),
                isStart: false,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:constraints==null?8.0:0.0),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text(
                      "Responsible for zoom SDK integration for efficient live classes module, during covid it was a huge in demand feature for efficient school management across multiple schools.",
                      style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                    ),
                  ),
                ),
                isStart: false,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:constraints==null?8.0:0.0),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text("Projects I worked on in this company.",style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),),
                    subtitle: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(height: 10,),

                        Row(
                          children: [
                            JobProjectCard(
                              name: AppStrings.myschoolapp,
                              navigate: AppStrings.myschoolapp,
                              image: "assets/images/myschoolap.png",
                            ),
                            SizedBox(width: 20,),
                          ],
                        )

                      ],
                    ),

                  ),
                ),
                isStart: false,
                isEnd: true,
              ),

              const SizedBox(height: 20,),
            ],
          ),
        )
    );;
  }
}
