import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:portfolio/pages/skills/components/progress_with_tooltip.dart';
import 'package:portfolio/pages/skills/skills_desktop.dart';
import 'package:portfolio/pages/skills/skills_mobile.dart';
import 'package:portfolio/pages/skills/skills_tablet.dart';
import 'package:portfolio/utils/dimensions.dart';

import '../../components/commons/header_indicator.dart';
import '../../theme/app_theme.dart';
import '../../utils/strings.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth<AppDimensions.mobile){
            return SkillsMobile();
          }else if(constraints.maxWidth<AppDimensions.tablet){
            return SkillsTablet();
          }else{
            return SkillsDesktop();
          }
        }
    );
  }
}

