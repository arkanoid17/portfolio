import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../theme/app_theme.dart';
import '../../../utils/dimensions.dart';

class ExpTimeLineTile extends StatelessWidget {

  final bool isStart;
  final bool isEnd;
  final Widget endChild;

  const ExpTimeLineTile({super.key, required this.endChild, required this.isStart, required this.isEnd});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      lineXY: 0.5,
      axis: TimelineAxis.vertical,
      isFirst: isStart,
      isLast: isEnd,
      indicatorStyle: IndicatorStyle(
        width: 10, // Set indicator size
        padding: const EdgeInsets.all(2.0), // Add space between indicator & child
        indicator: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12, // Customize indicator color
          ),
        ),
      ),
      beforeLineStyle: const LineStyle(color: Colors.black12, thickness: 2),
      endChild: endChild,
    );
  }
}
