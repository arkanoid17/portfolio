import 'package:flutter/material.dart';
import 'package:portfolio/pages/projects/models/project_model.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/app_utils.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';
import 'package:portfolio/utils/strings.dart';

class ProjectDetails extends StatelessWidget {

  final ProjectModel project;

  const ProjectDetails({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: project.name,
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(AppDimensions.pagePadding),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        fit: BoxFit.cover,
                        project.logo,
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(project.name,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w500, Colors.black),),
                            const SizedBox(width: 5,),
                            GestureDetector(
                              onTap: ()=>AppUtils.navigateToUrl(project.repoLink),
                              child: const Icon(
                                size: AppDimensions.mediumFont,
                                Icons.open_in_new,color:
                              AppColors.link,
                              ),
                            )
                          ],
                        ),
                        Text(project.type,style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black54),),
                      ],
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: ()=>Navigator.pop(context),
                        icon: const Icon(Icons.close)
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Text("${AppStrings.techUsed}:",style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),),
                const SizedBox(height: 5,),
                Text(project.techsUsed,style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.w400, Colors.black),),
                const SizedBox(height: 30,),
                Text("${AppStrings.screenShots}:",style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),),
                SizedBox(
                    height: 350,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: project.screenshots.length,
                        itemBuilder: (ctx,index)=>Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset(
                              fit: BoxFit.cover,
                              project.screenshots[index]
                          ),
                        )
                    )
                ),
                const SizedBox(height: 30,),
                Text("${AppStrings.keyPoints}:",style: AppTheme.textStyle(AppDimensions.smallFont, FontWeight.w400, Colors.black),),
                const SizedBox(height: 5,),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    minHeight: 50, // Prevent infinite height
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(), // Prevent scrolling inside SingleChildScrollView
                    itemCount: project.keyPoints.length,
                    itemBuilder: (ctx, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        "• ${project.keyPoints[index]}",
                        style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.w400, Colors.black),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
