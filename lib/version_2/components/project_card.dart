import 'package:flutter/material.dart';
import 'package:portfolio/version_2/model/project_model.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';

class ProjectCard extends StatelessWidget {
  
  final ProjectModel project;
  final BoxConstraints? constraints;

  const ProjectCard({super.key, required this.project, this.constraints});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: _getWidth(context),
        height: _getHeight(context),
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
                  Wrap(
                    runSpacing: 8,
                    spacing: 8,
                    children: project.techsUsed.split(',').map((e)=>_buildTag(e)).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
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
