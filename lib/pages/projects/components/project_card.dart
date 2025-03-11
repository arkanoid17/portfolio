import 'package:flutter/material.dart';
import 'package:portfolio/components/commons/hover_elevated_card.dart';
import 'package:portfolio/pages/projects/components/project_details.dart';
import 'package:portfolio/pages/projects/models/project_model.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/dimensions.dart';

class ProjectCard extends StatelessWidget {

  final ProjectModel project;

  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent, // Hides ripple effect
      highlightColor: Colors.transparent, // Hides highlight effect
      hoverColor: Colors.transparent,
      onTap: ()=>Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500), // Adjust duration here
          pageBuilder: (context, animation, secondaryAnimation) => ProjectDetails(project: project),
        ),
      ),
      child: Card(
        elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: project.name,
                  child: Image.asset(
                    project.logo,
                    width: AppDimensions.projectIconWidth,
                    height: AppDimensions.projectIconHeight,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(project.name,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w500, Colors.black),),
                const SizedBox(height: 20,),
                Text(project.briefDesc,style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black54),maxLines: 3,),
              ],
            ),
          )
      ),
    );
  }
}
