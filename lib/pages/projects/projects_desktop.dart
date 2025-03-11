import 'package:flutter/material.dart';
import 'package:portfolio/pages/projects/components/project_card.dart';
import 'package:portfolio/pages/projects/models/project_model.dart';
import 'package:portfolio/utils/dimensions.dart';

import '../../components/commons/header_indicator.dart';
import '../../theme/app_theme.dart';
import '../../utils/strings.dart';

class ProjectsDesktop extends StatefulWidget {


  ProjectsDesktop({super.key});

  @override
  State<ProjectsDesktop> createState() => _ProjectsState();
}

class _ProjectsState extends State<ProjectsDesktop> {
  List<ProjectModel> projects = [

  ];

  @override
  void initState() {
    projects.add(
        ProjectModel(
            name: "Recipe-app",
            type: "Mobile application, backend",
            logo: "assets/images/ic_recipe.png",
            briefDesc: "This application is your go to app to get recipe's from all our trusted community. View recipe's favourite them or even read articles posted across community. Also share valuable feedback in the review section. Most importantly try out these delish recipes they do be bussin!",
            techsUsed: "Flutter, Dart, Firebase-Auth, Firebase storage, Firestore DB.",
            screenshots: ["assets/images/recipe_ss1.jpeg","assets/images/recipe_ss2.jpeg","assets/images/recipe_ss3.jpeg","assets/images/recipe_ss4.jpeg","assets/images/recipe_ss5.jpeg","assets/images/recipe_ss6.jpeg"],
            keyPoints: ["Easy authorization via email and password.","View recipes from everyone in the community to get various cuisines.","Favourite any recipe that catches your tummy, I meant eye for future reference.","View recipes based on likes,reviews and most favourited by the community","Share your own recipes across the community.","Give constructive feedback on recipes according to your expertise.","Read and share interesting articles related to food."],
            repoLink: "https://github.com/arkanoid17/recipeapp"
        )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(AppDimensions.pagePadding),
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
            Text(AppStrings.projectsDesc,style: AppTheme.textStyle(AppDimensions.mediumFont, FontWeight.w400, Colors.black),),
            const SizedBox(height: 20,),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, // Number of columns
                crossAxisSpacing: 10, // Space between columns
                mainAxisSpacing: 10, // Space between rows
                childAspectRatio: 1.5, // Aspect ratio of grid items
              ),
              itemBuilder: (context,index)=>ProjectCard(project: projects[index]),
              itemCount: projects.length,
            )
            )
          ],
        ),
    );
  }
}
