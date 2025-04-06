import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:portfolio/version_2/components/project_card.dart';
import 'package:portfolio/version_2/model/project_model.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';

class ProjectsList extends StatefulWidget {

  final List<ProjectModel> projects;
  final BoxConstraints constraints;


  const ProjectsList({super.key, required this.projects, required this.constraints});

  @override
  State<ProjectsList> createState() => _ProjectsListState();
}

class _ProjectsListState extends State<ProjectsList> {

  int _currentIndex = 0;

  int totalIndicators = 0;

  @override
  Widget build(BuildContext context) {

    var itemsPerPage = 3;

    if(widget.constraints.maxWidth<AppDimensions.mobile){
      itemsPerPage = 1;
    }else if (widget.constraints.maxWidth<AppDimensions.tablet){
      itemsPerPage = 2;
    }else{
      itemsPerPage = 3;
    }

    totalIndicators = widget.projects.length-(itemsPerPage-1);

    var viewportFraction = 1.0 / itemsPerPage;



    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 450,
          child: FlutterCarousel(
            items:  widget.projects.map((project) {
              return Builder(
                builder: (BuildContext context) {
                  return ProjectCard(project: project);
                },
              );
            }).toList(),
            options: FlutterCarouselOptions(
              initialPage: 0,
              height: 320,
              viewportFraction: viewportFraction,
              enableInfiniteScroll: false, // Disable infinite scroll for page-like behavior
              enlargeCenterPage: false, // Disable enlarging the center item
              padEnds: false,
              showIndicator: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
              // Remove extra padding at the start and end
            ),
          ),
        ),
        SizedBox(
          height: 20,
          width: double.infinity, // Full width
          child: Align(
            alignment: Alignment.center,
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: totalIndicators,
              itemBuilder: (ctx, index) => Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                width: 20,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == _currentIndex ? AppColors.colorOne : Colors.white,
                ),
              ),
            ),
          ),
        )

      ],
    );
  }
}
