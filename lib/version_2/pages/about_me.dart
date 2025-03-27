import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/pages/work_experience/components/thriwin.dart';
import 'package:portfolio/version_2/components/education_card.dart';
import 'package:portfolio/version_2/components/gradient_dot.dart';
import 'package:portfolio/version_2/model/work/work.dart';
import 'package:portfolio/version_2/model/work/work_project.dart';

import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {

  List<Work> work = [];

  @override
  void initState() {
    work.add(
        Work(
            "Apr 2021",
            "Present",
            "Software Developer",
            "Thriwin.io",
            "Responsible for developing backend features like notification & integration system and other mobile applications for workforce management.",
            [
              "Responsible to build the backend for notification service in Thriwin.io especially OTA notification service using Firebase and how to add actions on notifications. Also was responsible to track the deliverability rates and maintain scale for all users so as to not block our servers.",
              "Responsible to build the system for email integration which is used to connect their emails using OAUTH2 and sync mailboxes in our platform. Also added SMTP and IMAP connection of emails for external mails and built SMTP bulk email sender which is used across channels.",
              "Responsible to build the mobile application for Sales-force management application for product distribution, store onboarding and promotion via multiple schemes options. Role and permission based application with multiple roles like, salesmen, distributor and zonal mangers. ",
            ],
            [
              WorkProject(
                  "Thriwin",
                  "CRM software for generating and manging leads efficiently",
                  "assets/images/thriwin_logo.jpeg",
                  AppStrings.url_thriwin
              ),
              WorkProject(
                  "Vajra",
                  "Workforce management and onboarding application for enterprises.",
                  "assets/images/vajra_logo.jpg",
                  AppStrings.url_vajraPlaystore
              ),
              WorkProject(
                  "Galax",
                  "Outlet management and servicing application for enterprises.",
                  "assets/images/galaxy_logo.jpg",
                  AppStrings.url_galaxyPlayStore
              )
            ]
        ),
    );
    work.add(
        Work(
            "May 2019",
            "Apr 2021",
            "Android Developer",
            "CloudEdz Pvt Ltd",
            "Responsible to build Mobile Application for School management. Created individual modules for school content management, attendance management, online exams and many more. ",
            [
              "Responsible to build online live examinations for over 50k live users and have a seamless experience while they are at it. Used S3 bucket to bulky collect responses and keep synchronized across for all users.",
              "Responsible for zoom SDK integration for efficient live classes module, during covid it was a huge in demand feature for efficient school management across multiple schools.",
            ],
            [
              WorkProject(
                  "MySchoolApp",
                  "School management application for students, teachers and parents.",
                  "assets/images/myschoolap.png",
                  AppStrings.url_myschoolapp
              )
            ]
        ),
    );
    work.add(
      Work(
          "Oct 2018",
          "Apr 2019",
          "Android Developer Intern",
          "Neevan IT Solutions",
          "Responsible to build common components across the mobile application for match-making application with features like Auth, Dashboard, Profile management, match listing and others.",
          [
            "Responsible to building continuous API integrations across modules like profile details and updating these details, did also contribute heavily in Auth module in User registration.",
            "Responsible for building aadhaar verification for users during registration via scanning QR code of their aadhaar card to cross verify the entered details from user.",
          ],
          []
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height - AppDimensions.toolbarHeight,
      padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Column(
        children: [
          Chip(label: Text("About Me",style: AppDecoration.smallChipText,)),
          const SizedBox(
            height: 10,
          ),
          const Text("Software Developer",style: AppDecoration.sectionHeaderText,),
          const Text("Below is depicted my journey across my 6 year long career.",style: AppDecoration.smallGreyText,),
          const SizedBox(
            height: 20,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 35,),
                  GradientDot(),
                  Container(
                    width: 1,
                    height: 170,
                    color: Colors.grey.shade300,
                  ),
                  GradientDot(),
                  Container(
                    width: 1,
                    height: 170,
                    color: Colors.grey.shade300,
                  ),
                  GradientDot(),
                ],
              ),
              Column(
                children: [
                  EducationCard(work: work[0]),
                  EducationCard(work: work[1]),
                  EducationCard(work: work[2]),
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
