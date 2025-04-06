import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/projects_and_experience.dart' show ProjectsAndExperience;
import 'package:portfolio/version_2/components/toolbar/toolbar_buttons.dart';
import 'package:portfolio/version_2/pages/skills/skill_menu_button.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class SkillViewer extends StatelessWidget {

  final BoxConstraints constraints;
  final Function onTabChanged;
  final String selected;
  final Map<String,List<String>> skills;

  const SkillViewer({super.key, required this.constraints, required this.onTabChanged, required this.selected, required this.skills});

  @override
  Widget build(BuildContext context) {


    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("",style: AppDecoration.mediumBlackText[AppUtils.getDevice(constraints)],),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.all(5),
          decoration: AppDecoration.cardDecorLight,
          child: Row(
            children: [
              Expanded(
                  child: SkillMenuButton(
                      title: "Frontend",
                      selected: selected,
                      onPressed: onTabChanged,
                      index: 1
                  )
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: SkillMenuButton(
                    title: "Backend",
                    selected: selected,
                    onPressed: onTabChanged,
                    index: 2
                ),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: SkillMenuButton(
                    title: "Software",
                    selected: selected,
                    onPressed: onTabChanged,
                    index: 3
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 250,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: _getAxisCount(), // Number of columns
              crossAxisSpacing: 10, // Space between columns
              mainAxisSpacing: 10, // Space between rows
              childAspectRatio: 4, // Aspect ratio of grid items
            ),
            itemBuilder: (context,index)=>ProjectsAndExperience(title: skills[selected]![index],constraints: constraints,),
            itemCount: skills[selected]?.length,
          ),
        )
      ],
    );
  }

  _getAxisCount(){
    if(constraints.maxWidth<AppDimensions.mobile){
      return 2;
    }
    return 3;
  }
}
