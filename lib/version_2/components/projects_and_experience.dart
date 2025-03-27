import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/gradient_dot.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';

class ProjectsAndExperience extends StatelessWidget {

  final String title;

  const ProjectsAndExperience({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: AppDecoration.cardDecorLight,
      child:  Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.teal, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Text(title,style: AppDecoration.smallBlackText,),
          const SizedBox(width: 20,),
        ],
      ),
    );
  }
}
