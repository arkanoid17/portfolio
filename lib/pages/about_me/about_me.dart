import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/components/commons/app_icon_button.dart';
import 'package:portfolio/components/commons/hover_elevated_card.dart';
import 'package:portfolio/pages/about_me/about_me_desktop.dart';
import 'package:portfolio/pages/about_me/about_me_mobile.dart';
import 'package:portfolio/pages/about_me/about_me_tablet.dart';
import 'package:portfolio/pages/about_me/components/socials_card.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../components/commons/header_indicator.dart';
import 'components/education_timeline.dart';

class AboutMe extends StatelessWidget {

  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<AppDimensions.mobile){
            return const AboutMeMobile();
          }else if(constraints.maxWidth<AppDimensions.tablet){
            return const AboutMeTablet();
          }else{
            return const AboutMeDesktop();
          }
        }
    );
  }
}
