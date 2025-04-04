import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_colors.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

import '../model/work/work.dart';

class EducationCard extends StatelessWidget {
  final BoxConstraints constraints;
  final Work work;

  const EducationCard({super.key, required this.work, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: _getPadding(constraints),
          child: Container(
            width: _getWidth(constraints, context),
            padding: _getPadding(constraints),
            decoration: AppDecoration.cardDecor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Date badge
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 6
                  ),
                  decoration: AppDecoration.dateBg,
                  child: Text(
                    "${work.start} - ${work.end}",
                    style: AppDecoration.dateTextStyle[AppUtils.getDevice(constraints)],
                  ),
                ),
                const SizedBox(height: 10),

                // Title
                Text(
                  work.title,
                  style: AppDecoration.mediumBlackText[AppUtils.getDevice(constraints)],
                ),

                // University
                Text(
                  work.company,
                  style: AppDecoration.smallGreyText[AppUtils.getDevice(constraints)],
                ),

                const SizedBox(height: 8),

                // Description
                Text(
                  work.desc,
                  style: AppDecoration.smallCaptionGreyText[AppUtils.getDevice(constraints)],
                ),
              ],
            ),
          ),
        );
  }

  _getPadding(BoxConstraints constraints) =>
      EdgeInsets.all(constraints.maxWidth <= AppDimensions.mobile
          ? 8
          : constraints.maxWidth <= AppDimensions.tablet
              ? 12
              : 16
      );

  _getWidth(BoxConstraints constraints, BuildContext context) {
    if (constraints.maxWidth <= AppDimensions.mobile) {
      return MediaQuery.of(context).size.width * 0.85;
    } else if (constraints.maxWidth <= AppDimensions.tablet) {
      return MediaQuery.of(context).size.width * 0.7;
    } else {
      return MediaQuery.of(context).size.width * 0.6;
    }
  }
}
