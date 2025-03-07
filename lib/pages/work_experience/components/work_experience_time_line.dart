import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/pages/work_experience/components/cloudedz.dart';
import 'package:portfolio/pages/work_experience/components/neevan.dart';
import 'package:portfolio/pages/work_experience/components/thriwin.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WorkExperienceTimeLine extends StatelessWidget {

  final BoxConstraints? constraints;

  const WorkExperienceTimeLine({super.key, this.constraints});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Thriwin(),
        Cloudedz(),
        Neevan()
      ],
    );
  }
}


