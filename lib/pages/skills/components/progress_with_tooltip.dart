import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/dimensions.dart';

import 'package:flutter/material.dart';

class ProgressWithTooltip extends StatelessWidget {
  final String label;
  final double progress; // Value between 0.0 to 1.0

  const ProgressWithTooltip({
    Key? key,
    required this.label,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
              child: Text(
            label,
            style: AppTheme.textStyle(AppDimensions.semiMedium, FontWeight.w500, Colors.black),
          )
          ),
          const SizedBox(width: 10),
          Flexible(
            fit: FlexFit.loose,
            flex: 5,
            child: Tooltip(
              message: progress.toStringAsFixed(1), // Tooltip shows percentage
              child: SizedBox(
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Circular edges
                  child: LinearProgressIndicator(
                    minHeight: 10,
                    value: (progress*2)/10,
                    color: AppColors.link,
                    backgroundColor: AppColors.blackDivider,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


