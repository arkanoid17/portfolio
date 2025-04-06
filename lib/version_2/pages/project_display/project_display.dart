import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:portfolio/version_2/components/gradient_dot.dart';
import 'package:portfolio/version_2/components/gradient_dot_small.dart';
import 'package:portfolio/version_2/components/tech_stack_chip.dart';
import 'package:portfolio/version_2/model/project_model.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class ProjectDisplay extends StatefulWidget {

   static route (project)=> MaterialPageRoute(builder: (ctx)=>ProjectDisplay(project: project));

  final ProjectModel project;



  const ProjectDisplay({super.key, required this.project});

  @override
  State<ProjectDisplay> createState() => _ProjectDisplayState();
}

class _ProjectDisplayState extends State<ProjectDisplay> {



  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {

  final screenWidth = MediaQuery.of(context).size.width;
  var itemsPerPage = 3;

  if(widget.project.type.toLowerCase().contains("mobile")){
    itemsPerPage = screenWidth<AppDimensions.mobile?2:screenWidth<AppDimensions.tablet?5:7;
  }else{
    itemsPerPage = screenWidth<AppDimensions.mobile?1:screenWidth<AppDimensions.tablet?2:3;
  }

  var viewportFraction = 1.0 / itemsPerPage;

    return LayoutBuilder(builder: (ctx,constraints)=>Scaffold(

      body: SingleChildScrollView(
        child:  Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: AppDecoration.cardDecorLight,
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(8),
                      child: Image.asset(widget.project.logo),
                    ),
                    SizedBox(width: 20,),
                    Text(widget.project.name,style: AppDecoration.toolbarText,),
                    Spacer(),
                    IconButton(onPressed: ()=>Navigator.pop(context), icon: Icon(Icons.close))
                  ],
                ),
                SizedBox(height: 30,),
                Text("Project Overview",style: AppDecoration.largeBlackText,),
                SizedBox(height: 5,),
                Text(widget.project.briefDesc,style: AppDecoration.smallBlackText,),
                SizedBox(height: 30,),
                TechStackChip(techStack: widget.project.techsUsed.split(',')),
                SizedBox(height: 30,),
                SizedBox(
                  height: 380,
                  child: FlutterCarousel(
                    items: (widget.project.screenshots).map((ss) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add some spacing between items
                      child: ClipRRect(
                        borderRadius: BorderRadius.all( Radius.circular(12)),
                        child: Image.asset(ss, fit: BoxFit.fill, width: screenWidth / itemsPerPage),
                      ),
                    )).toList(),
                    options: FlutterCarouselOptions(
                      initialPage: 0,
                      height: 300,
                      viewportFraction: viewportFraction,
                      enableInfiniteScroll: true, // Disable infinite scroll for page-like behavior
                      enlargeCenterPage: false, // Disable enlarging the center item
                      padEnds: false,
                      showIndicator: true,
                        slideIndicator:CircularSlideIndicator(
                          slideIndicatorOptions: SlideIndicatorOptions(
                            currentIndicatorColor: AppColors.colorOne,
                            indicatorBackgroundColor: Colors.white
                          )

                        )
                      // Remove extra padding at the start and end
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text("Key Features",style: AppDecoration.largeBlackText,),
                SizedBox(height: 5,),
                Column(
                  children: widget.project.keyPoints.map((point)=>ListTile(
                    leading: Icon(Icons.circle, size: 8, color: Colors.black),
                    title: Text(point,style: AppDecoration.smallBlackText,),
                      dense: true, // Makes the tile more compact
                      visualDensity: VisualDensity(vertical: -4)
                  )).toList(),
                )




              ],
            ),
        ),
      )

    ));
  }
}
