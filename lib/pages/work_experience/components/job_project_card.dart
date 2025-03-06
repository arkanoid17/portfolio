import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/app_utils.dart';
import '../../../utils/colors.dart';
import '../../../utils/dimensions.dart';
import '../../../utils/strings.dart';

class JobProjectCard extends StatelessWidget {

  final String name;
  final String image;
  final String navigate;

  const JobProjectCard({super.key, required this.name, required this.image, required this.navigate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent, // Hides ripple effect
      highlightColor: Colors.transparent, // Hides highlight effect
      hoverColor: Colors.transparent,
      onTap: ()=>AppUtils.navigateToUrl(navigate),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: AppTheme.greyBorder,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child:  Image.asset(
                image,
                width: AppDimensions.projectIconWidth,
                height: AppDimensions.projectIconHeight,
              ),
            ),
          ),
          const SizedBox(height: 5,),
          Text(name,style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.w400, AppColors.link),)
        ],
      ),

    );
  }
}
