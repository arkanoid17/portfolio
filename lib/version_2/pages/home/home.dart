import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/version_2/pages/home/home_user_details.dart';
import 'package:portfolio/version_2/pages/home/home_user_image.dart';

import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/components/gradient_button.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Home extends StatelessWidget {

  final GlobalKey homeKey;

  const Home( {super.key, required this.homeKey});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (context,constraints)=>Container(
          key: homeKey,
          height: MediaQuery.of(context).size.height-AppDimensions.toolbarHeight,
          padding:_getPadding(constraints),
          width: double.infinity,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                _getProfileDetails(constraints),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                          width: 30,
                          height: 30,
                          "assets/images/ic_github.svg"
                      ),
                      onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_github),
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      child: SvgPicture.asset(
                          width: 35,
                          height: 35,
                          "assets/images/ic_linked_in.svg"
                      ),
                      onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_linkedin),
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      child: SvgPicture.asset(
                          width: 30,
                          height: 30,
                          "assets/images/ic_leetcode.svg"
                      ),
                      onTap: ()=>AppUtils.navigateToUrl(AppStrings.url_leetcode),
                    ),
                    const SizedBox(width: 20,),
                    InkWell(
                      child: SvgPicture.asset(
                          width: 30,
                          height: 30,
                          "assets/images/ic_gmail.svg"
                      ),
                      onTap: ()=>AppUtils.navigateToEmail(),
                    )
                  ],
                )
              ],
            ),
          ),
        )
    );

  }

  _getProfileDetails(BoxConstraints constraints) {
    if(constraints.maxWidth<AppDimensions.mobile){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          HomeUserImage(constraints: constraints,),
          const SizedBox(height: 40,),
          HomeUserDetails(constraints: constraints,),


        ],
      );
    }else if(constraints.maxWidth<AppDimensions.tablet){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          HomeUserImage(constraints: constraints,),
          const SizedBox(height: 40,),
          HomeUserDetails(constraints: constraints,),


        ],
      );
    }else{
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Expanded(
              flex: 2,
              child: HomeUserDetails(constraints: constraints,)
          ),
          const SizedBox(width: 40,),
          Expanded(
              flex: 1,
              child: SizedBox(
                child: Center(
                    child: HomeUserImage(constraints: constraints,)
                ),
              )
          ),

        ],
      );
    }
  }


   _getPadding(BoxConstraints constraints) {
    if(constraints.maxWidth<AppDimensions.mobile){
      return const EdgeInsets.all(AppDimensions.mobilePagePadding);
    }else if(constraints.maxWidth<AppDimensions.mobile){
      return const EdgeInsets.all(AppDimensions.tabletPagePadding);
    }else{
      return EdgeInsets.only(left: constraints.maxWidth*0.15,right: constraints.maxWidth*0.15);
    }
  }
}
