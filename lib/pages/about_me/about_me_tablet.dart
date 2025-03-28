import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/commons/app_icon_button.dart';
import 'package:portfolio/components/commons/hover_elevated_card.dart';
import 'package:portfolio/pages/about_me/components/socials_card.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../components/commons/header_indicator.dart';
import 'components/education_timeline.dart';

class AboutMeTablet extends StatelessWidget {

  const AboutMeTablet({super.key});

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
                Expanded(
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
                            onPressed: ()=>AppUtils.navigateToPdfViewer(context),
                            icon: Icons.library_books_outlined,
                            buttonText: AppStrings.resume,
                            buttonTextStyle: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w600, Colors.white),
                            buttonStyle: AppTheme.greyButton
                        ),
                      ],
                    )
                ),
                const SizedBox(width: 20,),
                Image.asset(
                    width: 250,
                    height: 250,
                    "assets/images/me.jpeg"
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
                   Row(
                    children: [
                      const HeaderIndicator(),
                      const SizedBox(width: 10,),
                      Text(AppStrings.socials,style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.w500, Colors.black),),
                    ],
                  ),
                  const SizedBox(height:20),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                    children: [
                      HoverElevatedCard(title: AppStrings.linkedin, onClicked: AppUtils.navigateSocials, view: SocialsCard(name: AppStrings.linkedin, desc: AppStrings.careerInsights, image: "assets/images/ic_linked_in.svg")),
                      SizedBox(width: 20,),
                      HoverElevatedCard(title: AppStrings.github, onClicked: AppUtils.navigateSocials, view: SocialsCard(name: AppStrings.github, desc: AppStrings.myProjects, image: "assets/images/ic_github.svg")),
                      SizedBox(width: 20,),
                      HoverElevatedCard(title: AppStrings.leetcode, onClicked: AppUtils.navigateSocials, view: SocialsCard(name: AppStrings.leetcode, desc: AppStrings.problemSolver, image: "assets/images/ic_leetcode.svg")),
                    ],
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
                Row(
                  children: [
                    const HeaderIndicator(),
                    const SizedBox(width: 10,),
                    Text(AppStrings.education,style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.w500, Colors.black),),
                  ],
                ),
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
