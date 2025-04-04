import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class SkillDescription extends StatelessWidget {

  final BoxConstraints constraints;

  const SkillDescription({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My History",style: AppDecoration.mediumBlackText[AppUtils.getDevice(constraints)],),
        Text(AppStrings.skillDesc,style: AppDecoration.smallGreyText[AppUtils.getDevice(constraints)],),
        const SizedBox(height: 20,),
        Row(

          children: [
            Container(
              padding: const EdgeInsets.only(top:10,left:10,right:30,bottom:10),
              decoration: AppDecoration.cardDecorLight,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("6+",style: AppDecoration.largeColorOneText[AppUtils.getDevice(constraints)],),
                  Text("Years of experience",style: constraints.maxWidth<AppDimensions.mobile?AppDecoration.smallMobileBlackText:AppDecoration.smallBlackText,)
                ],
              ),
            ),
            const SizedBox(width: 20,),
            Container(
              padding: const EdgeInsets.only(top:10,left:10,right:30,bottom:10),
              decoration: AppDecoration.cardDecorLight,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("10+",style: AppDecoration.largeColorTwoText[AppUtils.getDevice(constraints)],),
                  Text("Projects completed",style: constraints.maxWidth<AppDimensions.mobile?AppDecoration.smallMobileBlackText:AppDecoration.smallBlackText,)
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
