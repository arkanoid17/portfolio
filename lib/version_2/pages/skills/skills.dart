import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/projects_and_experience.dart';
import 'package:portfolio/version_2/components/toolbar/toolbar_buttons.dart';
import 'package:portfolio/version_2/pages/skills/skill_description.dart';
import 'package:portfolio/version_2/pages/skills/skill_viewer.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class Skills extends StatefulWidget {

  final GlobalKey skillsKey = GlobalKey();

  Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {

  String selected = "Frontend";
  Map<String,List<String>> skills = {
    "Frontend":["Android","Flutter","HTML","CSS","JavaScript","ReactJs"],
    "Backend":["Java","Spring","Spring Boot","Spring MVC","Python Django","MySQL","PostgresSQl"],
    "Software":["IntelliJ","Android Studio","VsCode","Git","AWS","Firebase"]
  };


  @override
  Widget build(BuildContext context) {
    return
        LayoutBuilder(builder: (ctx,constraints) => Container(
          key: widget.skillsKey,
          padding: EdgeInsets.only(left: 20,right:20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height-AppDimensions.toolbarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Chip(label: Text("Skills",style: AppDecoration.smallChipText,)),
              const SizedBox(
                height: 10,
              ),
              Text("My Skills",style: AppDecoration.sectionHeaderText[AppUtils.getDevice(constraints)],),
              Text("Below is depicted my skills that I acquired throughot my career.",style: AppDecoration.smallGreyText[AppUtils.getDevice(constraints)],),
              const SizedBox(
                height: 40,
              ),

              _getLayout(constraints),

            ],
          ),
        )
      );
  }

  _getLayout(BoxConstraints constraints){
    if(constraints.maxWidth<AppDimensions.mobile || constraints.maxWidth<AppDimensions.tablet){
      return Column(
        children: [
          SkillDescription(constraints: constraints),
          const SizedBox(height: 20,),
          SkillViewer(constraints: constraints, onTabChanged: _onTabChanged, selected: selected, skills: skills)
        ],
      );
    }
    else{
      return Row(
        children: [
          Expanded(
              child: SkillDescription(constraints: constraints)
          ),
          const SizedBox(width: 30,),
          Expanded(
              child: SkillViewer(constraints: constraints, onTabChanged: _onTabChanged, selected: selected, skills: skills)
          )
        ],
      );
    }
  }


  _onTabChanged(String value){
    setState(() {
      selected = value;
    });
  }
}
