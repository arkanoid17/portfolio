import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:portfolio/pages/skills/components/progress_with_tooltip.dart';
import 'package:portfolio/utils/dimensions.dart';

import '../../components/commons/header_indicator.dart';
import '../../theme/app_theme.dart';
import '../../utils/strings.dart';

class SkillsMobile extends StatefulWidget {

  const SkillsMobile({super.key});

  @override
  State<SkillsMobile> createState() => _SkillsState();
}

class _SkillsState extends State<SkillsMobile> {

  Map<String, double> skills = <String,double>{};
  List<String> label = [];

  @override
  void initState() {
    skills['Java'] = 4.2;
    skills['Flutter'] = 4.0;
    skills['Dart'] = 3.7;
    skills['Firebase'] = 4.0;
    skills['Android'] = 3.8;
    skills['Python'] = 3.5;
    skills['Django'] = 3.2;
    skills['SQL'] = 3.5;
    skills['HTML'] = 3.2;
    skills['CSS'] = 3.0;
    label = skills.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(AppDimensions.pagePadding),
        child: Column(
          children: [
            Row(
              children: [
                const HeaderIndicator(),
                const SizedBox(width: 10,),
                Text(AppStrings.skills,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w500, Colors.black),),
              ],
            ),
            const SizedBox(height: 10,),
            Text(AppStrings.skillDesc,style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.w400, Colors.black),),
            const SizedBox(height: 30,),
            Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, // Number of columns
                    crossAxisSpacing: 10, // Space between columns
                    mainAxisSpacing: 20, // Space between rows
                    childAspectRatio: 10, // Aspect ratio of grid items
                  ),
                  itemBuilder: (context,index)=>ProgressWithTooltip(label: label[index], progress: skills[label[index]]??0.0),
                  itemCount: label.length,
                )
            )
          ],
        ),
    );
  }
}
