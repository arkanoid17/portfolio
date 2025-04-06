import 'package:flutter/material.dart';
import 'package:portfolio/version_2/pages/project_display/project_display.dart';
import 'package:portfolio/version_2/components/tech_stack_chip.dart';
import 'package:portfolio/version_2/model/project_model.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';

class ProjectCard extends StatelessWidget {
  
  final ProjectModel project;
  final BoxConstraints? constraints;

  const ProjectCard({super.key, required this.project, this.constraints});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, ProjectDisplay.route(project)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration:AppDecoration.cardDecor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Placeholder for the image
              Container(
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      project.coverImage
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Project Title
                    Text(
                      project.name,
                      style: AppDecoration.semiMediumBlackText,
                    ),
                    const SizedBox(height: 6),
                    // Project Description
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      project.subtitle,
                      style: AppDecoration.smallGreyText["desktop"],
                    ),
                    const SizedBox(height: 12),
                    // Tech Stack Tags
                   TechStackChip(techStack: project.techsUsed.split(',').sublist(0,3)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 

  _getWidth(BuildContext context) {
    if(constraints!=null && constraints!.maxWidth<=AppDimensions.mobile){
      return constraints!.maxWidth;
    }
      
    return 450.0;
  }

  _getHeight(BuildContext context) {
    if(constraints!=null && constraints!.maxWidth<=AppDimensions.mobile){
      print('Me');
      return 360;
    }
    return 300.0;
  }
}
