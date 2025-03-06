import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/components/commons/circle_image.dart';
import 'package:portfolio/components/side_nav/menu_option.dart';
import 'package:portfolio/components/side_nav/nav_icon.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';

import '../../theme/app_theme.dart';
import '../../utils/app_utils.dart';
import '../../utils/strings.dart';

class SideNav extends StatefulWidget{

  final int selected;
  final Function onMenuOptionSelected;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const SideNav({super.key, required this.selected, required this.onMenuOptionSelected, this.scaffoldKey});

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppDimensions.navBarWidth,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.primary
      ),
      child: Center(
        child: ListView(

          children: [
            Padding(
                padding: const EdgeInsets.all(AppDimensions.pagePadding),
                child: Column(
                children: [
                  const Center(child: Text(AppStrings.name,style: AppTheme.nameTextStyle,),),
                  const SizedBox(height: 10),
                  Center(
                      child: Container(
                        width: AppDimensions.imageWidth,
                        height: AppDimensions.imageHeight,
                        decoration: AppTheme.ringDecoration,
                        child: CircleImage(image: "assets/images/me.jpeg", imageWidth: AppDimensions.imageWidth, imageHeight: AppDimensions.imageHeight),
                      )
                  ),
                  const SizedBox(height: 10),
                  const Text(AppStrings.websiteDesc,style: AppTheme.regularText,),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //email
                      NavIcon(icon: "assets/images/ic_gmail.svg",type: AppStrings.email,callback: AppUtils.navigateSocials,),

                      //linkedin
                      NavIcon(icon: "assets/images/ic_linked_in.svg",type:AppStrings.linkedin,callback: AppUtils.navigateSocials,),

                      //github
                      NavIcon(icon: "assets/images/ic_github_bw.svg", type:AppStrings.github,callback: AppUtils.navigateSocials,),

                      //leetcode
                      NavIcon(icon: "assets/images/ic_leetcode.svg",type: AppStrings.leetcode,callback: AppUtils.navigateSocials,),

                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const Divider(
              color: AppColors.whiteDivider,
            ),
            Center(
              child: Column(
                children: [
                  MenuOption(title: AppStrings.aboutMe, selected: widget.selected==1,onMenuOptionSelected: widget.onMenuOptionSelected,scaffoldKey: widget.scaffoldKey,),
                  MenuOption(title: AppStrings.experience, selected: widget.selected==2,onMenuOptionSelected: widget.onMenuOptionSelected,scaffoldKey: widget.scaffoldKey,),
                  MenuOption(title: AppStrings.projects, selected: widget.selected==3,onMenuOptionSelected: widget.onMenuOptionSelected,scaffoldKey: widget.scaffoldKey,),
                  MenuOption(title: AppStrings.skills, selected: widget.selected==4,onMenuOptionSelected: widget.onMenuOptionSelected,scaffoldKey: widget.scaffoldKey,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }




}

