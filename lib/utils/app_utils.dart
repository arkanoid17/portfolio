import 'dart:io';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/strings.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;

class AppUtils{

  static const urls = {
    AppStrings.linkedin:"https://www.linkedin.com/in/arkaprabha-mahata-4b2aa8129/",
    AppStrings.github:"https://github.com/arkanoid17",
    AppStrings.leetcode:"https://leetcode.com/u/arkanoid17/",
    AppStrings.thriwin:"https://thriwin.io/",
    AppStrings.thriwinLinkedIn:"https://www.linkedin.com/company/thriwin",
    AppStrings.cloudedzLinkedIn:"https://www.linkedin.com/company/cloudedzc",
    AppStrings.neevanLinkedIn:"https://www.linkedin.com/company/neevan-it-solutions-pvt-ltd",
    AppStrings.vajraPlaystore:'https://play.google.com/store/apps/details?id=com.adjointtechnologies.vajra&hl=en',
    AppStrings.galaxyPlayStore:'https://play.google.com/store/apps/details?id=com.adjointtechnologies.galaxy&hl=en',
    AppStrings.myschoolapp:'https://www.myschoolapp.in/',
    AppStrings.resume:'https://drive.google.com/file/d/1ZnH0QZcSsTCs0Plqnj8XuqF3SgFBY7dT/view?usp=sharing',
  };

  static navigateToEmail()async{
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'mahata65@gmail.com',
    );

    try{
      if (Platform.isAndroid || Platform.isIOS) {
        await launchUrl(emailUri); // Opens in email app
      }
    }catch(e){
      html.window.open("mailto:mahata65@gmail.com", "_blank"); // Opens in new tab
    }
  }

  static navigateToUrl(String type)async {

    final Uri url = Uri.parse(urls[type]??'');

    try {
      if (Platform.isAndroid || Platform.isIOS) {
        await launchUrl(url); // Opens in email app
      }
    } catch (e) {

      if(urls.containsKey(type)){
        html.window.open(urls[type]??'', "_blank"); // Opens in new tab
      }else{
        html.window.open(type, "_blank"); // Opens in new tab
      }


    }
  }

  static navigateSocials(String type){
    switch (type){
      case AppStrings.email:
        AppUtils.navigateToEmail();
        break;
      default:
        AppUtils.navigateToUrl(type);
    }
  }

  static void navigateToPdfViewer(BuildContext context){
    // Navigator.push(context, PdfViewer.pdfViewerRoute());
    navigateToUrl(AppStrings.resume);
  }
}