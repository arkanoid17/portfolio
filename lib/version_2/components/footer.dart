import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/utils//app_utils.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: AppDimensions.footerHeight,
      padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
      child: Row(
        children: [
          Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                gradient: AppDecoration.gradient,
                borderRadius: BorderRadius.circular(30), // Apply rounded corners
              ),
              child: const Center(
                child: Text("AM",style: AppDecoration.smallerWhiteText,),
              )
          ),
          const SizedBox(width: 10,),
           Text("Arka",style: AppDecoration.mediumBlackText["desktop"],),
          Spacer(),
          Text('© 2025 Arkaprabha Mahata. All rights reserved.',style: AppDecoration.smallGreyText["desktop"],),
          Spacer(),
          Row(
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: AppDecoration.circleGrey,
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(
                      width: 30,
                      height: 30,
                      "assets/images/ic_github.png"
                  ),
                ),
                onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_github),
              ),
              const SizedBox(width: 20,),
              InkWell(
                hoverColor: Colors.transparent,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: AppDecoration.circleGrey,
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                      width: 30,
                      height: 30,
                      "assets/images/ic_linkedin.png"
                  ),
                ),
                onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_linkedin),
              ),
              const SizedBox(width: 20,),
              Container(
                width: 35,
                height: 35,
                decoration: AppDecoration.circleGrey,
                padding: const EdgeInsets.all(5),
                child: InkWell(
                  hoverColor: Colors.transparent,
                  child: Image.asset(
                      width: 30,
                      height: 30,
                      "assets/images/ic_leetcode.png"
                  ),
                  onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_leetcode),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
