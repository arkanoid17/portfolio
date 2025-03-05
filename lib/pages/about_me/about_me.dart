import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/commons/app_icon_button.dart';
import 'package:portfolio/components/commons/hover_elevated_card.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'education_timeline.dart';

class AboutMe extends StatelessWidget {

  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppDimensions.pagePadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(AppStrings.name,style: AppTheme.textStyle(AppDimensions.aboutMeNameFontSize, FontWeight.w600, Colors.black),),
                        Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text:AppStrings.softwareDeveloper,
                                    style: AppTheme.textStyle(AppDimensions.nameFontSize, FontWeight.w400, Colors.black),
                                  ),
                                  const TextSpan(
                                    text:" ",

                                  ),
                                  TextSpan(
                                    text:AppStrings.at,
                                    style: AppTheme.textStyle(AppDimensions.nameFontSize, FontWeight.w400, Colors.black),
                                  ),
                                  const TextSpan(
                                    text:" ",

                                  ),

                                  TextSpan(
                                    text:AppStrings.thriwin,
                                    style: AppTheme.textStyle(AppDimensions.nameFontSize, FontWeight.w400, AppColors.link),
                                    recognizer: TapGestureRecognizer()..onTap = () {
                                      AppUtils.navigateToUrl(AppStrings.thriwin);
                                      // Add navigation or other actions here
                                    },
                                  ),
                                ]
                            )
                        ),
                        SizedBox(height: 10,),
                        Text(AppStrings.aboutMeDesc,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w400, Colors.black54)),
                        SizedBox(height: 20,),
                        AppIconButton(
                            onPressed: ()=>{},
                            icon: Icons.library_books_outlined,
                            buttonText: AppStrings.resume,
                            buttonTextStyle: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w600, Colors.white),
                            buttonStyle: AppTheme.greyButton
                        ),
                      ],
                    )
                ),
                SizedBox(width: 20,),
                Flexible(
                  flex: 1,
                    child: Image.asset(
                        width: 250,
                        height: 250,
                        "assets/images/me.jpeg"
                    )
                )
              ],
            ),
          ),
          const Divider(color: AppColors.blackDivider,),
          Padding(
              padding: const EdgeInsets.all(AppDimensions.pagePadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.socials,style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.w500, Colors.black),),
                  const SizedBox(height:20),
                  const Row(
                    children: [
                      HoverElevatedCard(title: AppStrings.linkedin,description: AppStrings.careerInsights,image: "assets/images/ic_linked_in.svg",onClicked: AppUtils.navigateSocials,),
                      SizedBox(width: 20,),
                      HoverElevatedCard(title: AppStrings.github,description: AppStrings.myProjects,image: "assets/images/ic_github.svg",onClicked: AppUtils.navigateSocials,),
                      SizedBox(width: 20,),
                      HoverElevatedCard(title: AppStrings.leetcode,description: AppStrings.problemSolver,image: "assets/images/ic_leetcode.svg",onClicked: AppUtils.navigateSocials,),
                    ],
                  )
                ],
              ),
          ),
          const Divider(color: AppColors.blackDivider,),
          Padding(
              padding: const EdgeInsets.all(AppDimensions.pagePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.education,style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.w500, Colors.black),),
                const SizedBox(height:20),
                EducationTimeLiine()
              ],
            ),
          )
        ],
      ),
    );
  }
}
