import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:portfolio/version_2/components/project_card.dart';
import 'package:portfolio/version_2/model/project_model.dart';
import 'package:portfolio/version_2/pages/projects/projects_list.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class Projects extends StatefulWidget {

  final GlobalKey projectsKey = GlobalKey();

  Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {



  List<ProjectModel> projects = [];

  @override
  void initState() {

    //restaurant review
    projects.add(
        ProjectModel(
            name: "Restaurant Review",
            type: "Webapp",
            logo: "assets/images/ic_recipe.png",
            subtitle: "Web app for a passion project to add reviews on nearby restaurants.",
            briefDesc: "This website is your go to portal to search nearby restaurants and leave reviews as well as decide to try restaurants based on other's reviews",
            techsUsed: "Java, Spring Boot, Keycloak, Elastic Search, Node, NextJs",
            coverImage: "assets/images/rr_ss8.png",
            screenshots: ["assets/images/rr_ss1.png","assets/images/rr_ss2.png","assets/images/rr_ss3.png","assets/images/rr_ss4.png","assets/images/rr_ss5.png","assets/images/rr_ss6.png","assets/images/rr_ss7.png","assets/images/rr_ss8.png"],

            keyPoints: ["Model designing and relationships of users, restaurants, reviews and admin.","Stateless API to build components of the application.","Easy authentication management using keycloak","Elastic search data storage models and monitoring using Kibana using the docker image","Website design using the NextJs framework and help from the internet."],
            repoLink: "https://github.com/arkanoid17/rstaurant-review-backend"
        )
    );

    //recipe-app
    projects.add(
        ProjectModel(
            name: "Recipe-app",
            type: "Mobile application, backend",
            logo: "assets/images/ic_recipe.png",
            subtitle: "Food Recipe library application.",
            briefDesc: "This application is your go to app to get recipe's from all our trusted community. View recipe's favourite them or even read articles posted across community. Also share valuable feedback in the review section. Most importantly try out these delish recipes they do be bussin!",
            techsUsed: "Flutter,Dart,Firebase-Auth,Firestore DB",
            coverImage: "assets/images/recipe_app_cover.png",
            screenshots: ["assets/images/recipe_ss1.jpeg","assets/images/recipe_ss2.jpeg","assets/images/recipe_ss3.jpeg","assets/images/recipe_ss4.jpeg","assets/images/recipe_ss5.jpeg","assets/images/recipe_ss6.jpeg"],
            keyPoints: ["Easy authorization via email and password.","View recipes from everyone in the community to get various cuisines.","Favourite any recipe that catches your tummy, I meant eye for future reference.","View recipes based on likes,reviews and most favourited by the community","Share your own recipes across the community.","Give constructive feedback on recipes according to your expertise.","Read and share interesting articles related to food."],
            repoLink: "https://github.com/arkanoid17/recipeapp"
        )
    );


    //portfolio
    projects.add(
        ProjectModel(
            name: "Portfolio",
            type: "Website",
            logo: "assets/images/ic_recipe.png",
            subtitle: "Web app built on my personal profile.",
            briefDesc: "This website is the culmination of a person I am and also my journey in the tech career. Also highlights my skills and socials where you can get to know more about me.",
            techsUsed: "Flutter,Dart,Github hosting",
            coverImage: "assets/images/portfolio_app_cover.png",
            screenshots: ["assets/images/portfolio-1.png","assets/images/portfolio-2.png","assets/images/portfolio-3.png","assets/images/portfolio-4.png","assets/images/portfolio-5.png"],
            keyPoints: ["Website design using the flutter interface.","Responsive design for all devices like desktop, mobile and tablet.","Interactive components building with the flutter interface like timeline designs and hero animations.","Clear definitions of all my works and experience with links to repository, websites and applications."],
            repoLink: "https://github.com/arkanoid17/portfolio"
        )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (ctx,constraints){
          return SizedBox(
            key: widget.projectsKey,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chip(label: Text("Projects",style: AppDecoration.smallChipText,)),
                const SizedBox(
                  height: 10,
                ),
                Text("My projects",style: AppDecoration.sectionHeaderText[AppUtils.getDevice(constraints)],),
                Text("Below is depicted my projects that built throughot my career.",style: AppDecoration.smallGreyText[AppUtils.getDevice(constraints)],),
                const SizedBox(
                  height: 20,
                ),
                ProjectsList(projects: projects, constraints: constraints)


              ],
            ),
          );
        }
    );
  }


}
