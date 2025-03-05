import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:timeline_tile/timeline_tile.dart';

class EducationTimeLiine extends StatelessWidget {
  final List<EducationItem> educationList = [
    EducationItem(year: "2019", school: AppStrings.kits, grade: "${AppStrings.degree} | ${AppStrings.cgpa}"),
    EducationItem(year: "2015", school: AppStrings.slps, grade: "${AppStrings.sub} | ${AppStrings.score}"),
    EducationItem(year: "2013", school: AppStrings.saie, grade: "${AppStrings.degree} | ${AppStrings.marks}"),
  ];

  @override
  Widget build(BuildContext context) {
    return
       ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: educationList.length,
        itemBuilder: (context, index) {
          final item = educationList[index];
          return TimelineTile(
            alignment: TimelineAlign.start,
            isFirst: index == 0,
            isLast: index == educationList.length - 1,
            indicatorStyle: const IndicatorStyle(
              height: 30,
              drawGap: true,
              indicator: const Icon(Icons.school_outlined, color: Colors.blue)

            ),
            beforeLineStyle: const LineStyle(color: Colors.blue, thickness: 3),
            endChild: ListTile(
              // leading: const Icon(Icons.school_outlined, color: Colors.blue),
              title: Text(item.school, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item.grade),
            ),
          );
        },
      );

  }
}

class EducationItem {
  final String year;
  final String school;
  final String grade;

  EducationItem({required this.year, required this.school, required this.grade});
}

