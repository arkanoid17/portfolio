import 'package:flutter/material.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class ContactLinks extends StatelessWidget {

  final BoxConstraints constraints;

  const ContactLinks({super.key, required this.constraints});

  get _marginHeight => constraints.maxWidth<AppDimensions.mobile?20:40;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _getPadding(),
      decoration: constraints.maxWidth<AppDimensions.mobile || constraints.maxWidth<AppDimensions.tablet?AppDecoration.gradDecorTop:AppDecoration.gradDecorLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Contact Information",style: AppDecoration.largeWhite[AppUtils.getDevice(constraints)],),
          SizedBox(height: _marginHeight,),
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: AppDecoration.circleWhite,
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                  "assets/images/ic_linkedin.png",
                  color: Colors.white,
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(width: 10,),
             _getLinkedinLink()
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: AppDecoration.circleWhite,
                padding: const EdgeInsets.all(5),
                child: Image.asset(
                  "assets/images/ic_github.png",
                  color: Colors.white,
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(width: 10,),
              Text(AppStrings.url_github.replaceAll("https://", "").replaceAll("www.", ""),style: AppDecoration.smallerWhiteText,)
            ],
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: AppDecoration.circleWhite,
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  "assets/images/ic_mail.png",
                  color: Colors.white,
                  width: 30,
                  height: 30,
                ),
              ),
              const SizedBox(width: 10,),
              Text("mahata65@gmail.com",style: AppDecoration.smallerWhiteText,)
            ],
          ),

        ],
      ),
    );
  }

  _getPadding(){
    if(constraints.maxWidth<AppDimensions.mobile){
      return const EdgeInsets.all(15);
    }
    return const EdgeInsets.all(20);
  }

  _getLinkedinLink() {
    if(constraints.maxWidth<AppDimensions.mobile){
      return Flexible(child: Text(AppStrings.url_linkedin.replaceAll("https://", "").replaceAll("www.", ""),style: AppDecoration.smallerWhiteText,));
    }
    return Text(AppStrings.url_linkedin.replaceAll("https://", "").replaceAll("www.", ""),style: AppDecoration.smallerWhiteText,);
  }
}
