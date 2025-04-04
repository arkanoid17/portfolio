import 'package:flutter/material.dart';
import 'package:portfolio/version_2/components/gradient_dot.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class ProjectsAndExperience extends StatelessWidget {

  final String title;
  final BoxConstraints constraints;

  const ProjectsAndExperience({super.key, required this.title, required this.constraints});

  @override
  Widget build(BuildContext context) {
    return _getDeviceCard();
  }

  _getDeviceCard(){
    if(constraints.maxWidth<AppDimensions.mobile){
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: AppDecoration.cardDecorLight,
        child: Text(title,style: AppDecoration.smallBlackText,),
      );
    }

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
