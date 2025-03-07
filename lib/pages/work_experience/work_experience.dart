import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_experience/components/work_experience_time_line.dart';
import 'package:portfolio/pages/work_experience/work_experience_desktop.dart';
import 'package:portfolio/pages/work_experience/work_experience_mobile.dart';
import 'package:portfolio/pages/work_experience/work_experience_tablet.dart';

import '../../components/commons/header_indicator.dart';
import '../../theme/app_theme.dart';
import '../../utils/dimensions.dart';
import '../../utils/strings.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder
      (
        builder: (context,constraints){
          if(constraints.maxWidth<AppDimensions.mobile){
            return WorkExperienceMobile(constraints: constraints,);
          }else if(constraints.maxWidth<AppDimensions.tablet){
            return const WorkExperienceTablet();
          }else{
            return const WorkExperienceDesktop();
          }
        }
    );
  }
}
