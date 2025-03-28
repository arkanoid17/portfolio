import 'package:flutter/material.dart';

import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeUserDetails extends StatelessWidget {

  final BoxConstraints constraints;

  const HomeUserDetails({super.key, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Chip(
          label: Text("Software Developer",style: AppDecoration.smallChipText,),
        ),
        const SizedBox(height: 10,),
        Row(
          children: [
            constraints.maxWidth<AppDimensions.mobile?SizedBox():Text("Hello, I'm ",style: AppDecoration.nameText[AppUtils.getDevice(constraints)],),
            GradientText(
              'Arkaprabha Mahata',
              style:_getGradientTextSize,
              colors: const [
                AppColors.colorOne,
                AppColors.colorTwo,
              ],
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Text(AppStrings.aboutMeDesc,style: AppDecoration.smallGreyText[AppUtils.getDevice(constraints)],),
        const SizedBox(height: 20,),
        Row(
          children: [
            GradientButton(title: "View projects", onPressed: (){}),
            const SizedBox(width: 20,),
            OutlinedButton(onPressed: (){}, child: Text("View CV",style: AppDecoration.smallBlackText,))
          ],
        )
      ],
    );
  }

  get _getGradientTextSize => constraints.maxWidth<AppDimensions.mobile?
  const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold
  )
      : const TextStyle(
      fontSize: 40.0,
      fontWeight: FontWeight.bold
  );

  get _getIntroTextSize => constraints.maxWidth<AppDimensions.mobile?AppDecoration.nameText['mobile']:AppDecoration.nameText['desktop'];
}
