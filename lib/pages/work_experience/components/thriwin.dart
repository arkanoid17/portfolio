import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:link_utils/link_utils.dart';

import 'package:portfolio/components/commons/circle_image.dart';
import 'package:portfolio/components/commons/hover_elevated_card.dart';
import 'package:portfolio/pages/work_experience/components/exp_time_line_tile.dart';
import 'package:portfolio/pages/work_experience/components/job_project_card.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';


class Thriwin extends StatefulWidget {

  final BoxConstraints? constraints;

  Thriwin({super.key, this.constraints});

  @override
  State<Thriwin> createState() => _ThriwinState();
}

class _ThriwinState extends State<Thriwin> {


  @override
  Widget build(BuildContext context) {
    // checkLink();
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
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Text(AppStrings.rolesAndResp,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w500, Colors.black),),
              const SizedBox(height: 10,),

              ExpTimeLineTile(
                  endChild: Padding(
                    padding: EdgeInsets.only(top:widget.constraints==null?8.0:0.0),
                    child: ListTile(
                      visualDensity: const VisualDensity(vertical: -4),
                      title: Text(
                        "Responsible to build the backend for notification service in Thriwin.io especially OTA notification service using Firebase and how to add actions on notifications. Also was responsible to track the deliverability rates and maintain scale for all users so as to not block our servers.",
                        style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                      ),
                    ),
                  ),
                isStart: true,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:widget.constraints==null?8.0:0.0),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text(
                      "Responsible to build the system for email integration which is used to connect their emails using OAUTH2 and sync mailboxes in our platform. Also added SMTP and IMAP connection of emails for external mails and built SMTP bulk email sender which is used across channels.",
                      style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                    ),
                  ),
                ),
                isStart: false,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:widget.constraints==null?8.0:0.0),
                  child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4),
                    title: Text(
                      "Responsible to build the mobile application for Sales-force management application for product distribution, store onboarding and promotion via multiple schemes options. Role and permission based application with multiple roles like, salesmen, distributor and zonal mangers. ",
                      style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),
                    ),
                  ),
                ),
                isStart: false,
                isEnd: false,
              ),
              ExpTimeLineTile(
                endChild: Padding(
                  padding: EdgeInsets.only(top:widget.constraints==null?8.0:0.0),
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
                              name: AppStrings.thriwin,
                              navigate: AppStrings.thriwin,
                              image: "assets/images/thriwin_logo.jpeg",
                            ),
                            SizedBox(width: 20,),
                            JobProjectCard(
                              name: AppStrings.vajra,
                              navigate: AppStrings.vajraPlaystore,
                              image: "assets/images/vajra_logo.jpg",
                            ),
                            SizedBox(width: 20,),
                            JobProjectCard(
                              name: AppStrings.galaxy,
                              navigate: AppStrings.galaxyPlayStore,
                              image: "assets/images/galaxy_logo.jpg",
                            )
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
    );
  }


}
