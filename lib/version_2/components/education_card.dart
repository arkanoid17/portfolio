import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

import '../model/work/work.dart';

class EducationCard extends StatelessWidget {

  final Work work;

  const EducationCard({super.key, required this.work});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width*0.6,
        padding: const EdgeInsets.all(20),
        decoration: AppDecoration.cardDecor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Date badge
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: AppDecoration.dateBg,
              child:  Text(
                "${work.start} - ${work.end}",
                style: AppDecoration.dateTextStyle,
              ),
            ),
            const SizedBox(height: 10),

            // Title
             Text(
              work.title,
              style: AppDecoration.mediumBlackText,
            ),

            // University
             Text(
              work.company,
              style: AppDecoration.smallGreyText,
            ),

            const SizedBox(height: 8),

            // Description
             Text(
              work.desc,
              style: AppDecoration.smallCaptionGreyText,
            ),
          ],
        ),
      ),
    );
  }
}
