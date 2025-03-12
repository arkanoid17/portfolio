import 'package:flutter/material.dart';
import 'package:portfolio/pages/projects/components/project_card.dart';
import 'package:portfolio/pages/projects/models/project_model.dart';
import 'package:portfolio/utils/dimensions.dart';

import '../../components/commons/header_indicator.dart';
import '../../theme/app_theme.dart';
import '../../utils/strings.dart';

class ProjectsMobile extends StatefulWidget {

  final BoxConstraints? constraints;

  final List<ProjectModel> projects;

  const ProjectsMobile({super.key, this.constraints, required this.projects});

  @override
  State<ProjectsMobile> createState() => _ProjectsState();
}

class _ProjectsState extends State<ProjectsMobile> {


  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(AppDimensions.pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             children: [
               const HeaderIndicator(),
               const SizedBox(width: 10,),
               Text(AppStrings.projects,style: AppTheme.textStyle(AppDimensions.largeFont, FontWeight.w500, Colors.black),),
             ],
           ),
            const SizedBox(height: 10,),
            Text(AppStrings.projectsDesc,style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),),
            const SizedBox(height: 20,),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, // Number of columns
                crossAxisSpacing: 10, // Space between columns
                mainAxisSpacing: 10, // Space between rows
                childAspectRatio: 1.8, // Aspect ratio of grid items
              ),
              itemBuilder: (context,index)=>ProjectCard(project: widget.projects[index],constraints: widget.constraints,),
              itemCount: widget.projects.length,
            )
            )
          ],
        ),
    );
  }
}
