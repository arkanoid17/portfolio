import 'package:flutter/material.dart';
import 'package:portfolio/version_2/pages/contact/contact_form.dart';
import 'package:portfolio/version_2/components/custom_text_field.dart';
import 'package:portfolio/version_2/pages/contact/contact_links.dart';
import 'package:portfolio/version_2/resources/app_decoration.dart';
import 'package:portfolio/version_2/resources/app_dimensions.dart';
import 'package:portfolio/version_2/resources/app_strings.dart';
import 'package:portfolio/version_2/utils/app_utils.dart';

class ContactMe extends StatelessWidget {

  final GlobalKey contactKey = GlobalKey();

  ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (ctx,constraints) => Container(
          key: contactKey,
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.08,right:MediaQuery.of(context).size.width*0.08),
          width: double.infinity,
          height: MediaQuery.of(context).size.height-AppDimensions.toolbarHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Chip(label: Text("Contact",style: AppDecoration.smallChipText,)),
              const SizedBox(
                height: 10,
              ),
              Text("My Contact",style: AppDecoration.sectionHeaderText[AppUtils.getDevice(constraints)],),
              Text("Interested in working together or have any questions?",style: AppDecoration.smallGreyText[AppUtils.getDevice(constraints)],),
              const SizedBox(
                height: 40,
              ),

              Container(
                width: _getWidth(constraints),
                decoration: AppDecoration.cardDecorLight,
                child: _getLayout(constraints),
              )
            ],
          ),
        )
    );
  }

  _getLayout(BoxConstraints constraints){
    if(constraints.maxWidth<AppDimensions.mobile){
      return Column(
        children: [
          ContactLinks(constraints: constraints),
          Padding(
            padding: EdgeInsets.all(10),
            child: ContactForm(constraints: constraints,),
          ),
        ],
      );
    }

    if(constraints.maxWidth<AppDimensions.tablet) {
      return Column(
        children: [
          ContactLinks(constraints: constraints),
          Padding(padding: EdgeInsets.all(20),
            child: ContactForm(constraints: constraints,),),
        ],
      );
    }
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ContactLinks(constraints: constraints),
          Expanded(
              flex:1,
              child: Container(
                padding: const EdgeInsets.all(25),
                child: ContactForm(constraints: constraints,),
              )
          )
        ],
      ),
    );
  }

  _getWidth(BoxConstraints constraints) {

    if(constraints.maxWidth<AppDimensions.mobile){
      return constraints.maxWidth*0.9;
    }
    if(constraints.maxWidth<AppDimensions.tablet){
      return constraints.maxWidth*0.9;
    }

    return constraints.maxWidth*0.7;
  }
}
